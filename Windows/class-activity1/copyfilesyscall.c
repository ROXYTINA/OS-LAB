#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

#define BUFFER_SIZE 1024

int main()
{
    int src_fd, dest_fd;
    ssize_t bytesRead;
    char buffer[BUFFER_SIZE];

    src_fd = open("./result.txt", O_RDONLY);
    if (src_fd < 0)
    {
        perror("Error opening result.txt");
        exit(1);
    }

    dest_fd = open("copyresult.txt", O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (dest_fd < 0)
    {
        perror("Error creating copyresult.txt");
        close(src_fd);
        exit(1);
    }

    while ((bytesRead = read(src_fd, buffer, BUFFER_SIZE)) > 0)
    {
        if (write(dest_fd, buffer, bytesRead) != bytesRead)
        {
            perror("Error writing to copyresult.txt");
            close(src_fd);
            close(dest_fd);
            exit(1);
        }
    }

    if (bytesRead < 0)
        perror("Error reading from result.txt");

    write(1, "File copied successfully!\n", 27);

    close(src_fd);
    close(dest_fd);
    return 0;
}