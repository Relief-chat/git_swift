let password: Array<UInt8> = Array("s33krit".utf8)
let salt: Array<UInt8> = Array("nacllcan".utf8)

// ruleid: rabbit-hardcoded-secret
try Rabbit(key: "hello", iv: "123")
// ruleid: rabbit-hardcoded-secret
try Rabbit(key: password, iv: "123")
// ok: rabbit-hardcoded-secret
try Rabbit(key: config, iv: "123")