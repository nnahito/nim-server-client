import net

# 接続してきたクライアント情報
var client: Socket

# 接続してきたクライアントのIPアドレス
var address = ""

# ソケットを使ってサーバの起動
var socket = newSocket()
socket.bindAddr(Port(27960))
socket.listen()

while true:
    socket.acceptAddr(client, address)
    echo("Client connected from: ", address)
