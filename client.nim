import net

# ソケットを使って接続開始
let client: Socket = newSocket()

# 接続先。127.0.0.1は自分
client.connect("127.0.0.1", Port(27960))

# サーバに対してメッセージを送る
client.send("やっほ")

client.close()
