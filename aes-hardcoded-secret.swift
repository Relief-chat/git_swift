let password: Array<UInt8> = Array("s33krit".utf8)
let salt: Array<UInt8> = Array("nacllcan".utf8)

// ruleid: aes-hardcoded-secret
try AES(key: "hello", iv: "123")
// ruleid: aes-hardcoded-secret
try AES(key: password, iv: "123")
// ok: aes-hardcoded-secret
try AES(key: config, iv: "123")