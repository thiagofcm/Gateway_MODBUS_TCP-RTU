/*
    C socket server example
*/
 
#include<stdio.h>
#include<stdlib.h>
#include<string.h>    //strlen
#include<sys/socket.h>
#include<arpa/inet.h> //inet_addr
#include<unistd.h>    //write
 
int main(int argc , char *argv[])
{
    int socket_desc , client_sock , c , read_size;
    struct sockaddr_in server , client;
<<<<<<< HEAD:AulasTex/2018_1/SDCA/Aula03/Programming/serverbb.c
    char client_message[2000];
    int i = 0;
=======
    char client_message[10];
    int i = 0;
    float temperatura = 0; // valor de exemplo, simulando o valor de um sensor de temperatura para ser enviado para o cliente
    char server_message[10];
>>>>>>> 38c23fe1a31cb07fd8257b7ed54c83f3b1fb0cc5:AulasTex/2018_1/SDCA/Aula03/Programming/server.c
     
    //Create socket
    socket_desc = socket(AF_INET , SOCK_STREAM , 0);
    if (socket_desc == -1)
    {
        printf("Could not create socket");
    }
    puts("Socket created");
     
    //Prepare the sockaddr_in structure
    server.sin_family = AF_INET;
    server.sin_addr.s_addr = INADDR_ANY;
    server.sin_port = htons( 8888 );
     
    //Bind
    if( bind(socket_desc,(struct sockaddr *)&server , 
    sizeof(server)) < 0)
    {
        //print the error message
        perror("bind failed. Error");
        return 1;
    }
    puts("bind done");
     
    //Listen
    listen(socket_desc , 3);
     
    //Accept and incoming connection
    puts("Esperando por conexões...");
    c = sizeof(struct sockaddr_in);
     
    //accept connection from an incoming client
    client_sock = accept(socket_desc, 
    (struct sockaddr *)&client, (socklen_t*)&c);

    if (client_sock < 0)
    {
        perror("accept failed");
        return 1;
    }
    puts("Conexão recebida!!");
     
    //Receive a message from client
<<<<<<< HEAD:AulasTex/2018_1/SDCA/Aula03/Programming/serverbb.c
    while( (read_size = recv(client_sock , client_message , 2000 , 0))
     > 0 )
=======
    temperatura = 25.4;
    while( (read_size = recv(client_sock , client_message , 10 , 0)) > 0 )
>>>>>>> 38c23fe1a31cb07fd8257b7ed54c83f3b1fb0cc5:AulasTex/2018_1/SDCA/Aula03/Programming/server.c
    {
        puts(client_message);
        printf("o strlen -> %i\n",(int)strlen(client_message));
        // convertendo o valor da temperatura em uma string
        sprintf(server_message, "%.2f", temperatura);
        //Send the message back to client
<<<<<<< HEAD:AulasTex/2018_1/SDCA/Aula03/Programming/serverbb.c
        write(client_sock , client_message , strlen(client_message));
        for (i = 0; i< 2000; i++)
            client_message[i] = ' ';
=======
        write(client_sock , server_message , 10);
        
        // limpando a mensagem
        for(i = 0; i<10 ; i++)
        {
            client_message[i] = 0;
        }
        temperatura += 2.5;

>>>>>>> 38c23fe1a31cb07fd8257b7ed54c83f3b1fb0cc5:AulasTex/2018_1/SDCA/Aula03/Programming/server.c
    }
     
    if(read_size == 0)
    {
        puts("Cliente disconectado");
        fflush(stdout);
    }
    else if(read_size == -1)
    {
        perror("recv failed");
    }
    
    return 0;
}
