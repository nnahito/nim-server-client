import net

# 待機サーバ情報
var server: Socket = newSocket()
server.bindAddr(Port(27960))
server.listen()
stdout.writeLine("Server: started. Waiting connection...")


# クライアントの接続用待ちソケット
var client: Socket = newSocket()
# クライアントの接続を待つ
server.accept(client)
stdout.writeLine("Server: client connected")

while true:
    # メッセージが送られてくるのを待つ
    let message: string = client.recv(150)

    if message == "":
        break

    stdout.writeLine("Server: received from client: ", message)

server.close()
