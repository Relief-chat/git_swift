let password: Array<UInt8> = Array("s33krit".utf8)
let salt: Array<UInt8> = Array("nacllcan".utf8)

// ruleid: chacha20-hardcoded-secret
try ChaCha20(key: "hello", iv: "123")
// ruleid: chacha20-hardcoded-secret
try ChaCha20(key: password, iv: "123")
// ok: chacha20-hardcoded-secret
try ChaCha20(key: config, iv: "123")