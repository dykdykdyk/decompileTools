.class public final Lcom/umeng/message/proguard/aa;
.super Ljava/lang/Object;
.source "AesHelper.java"


# static fields
.field private static a:[B

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "uLi4/f4+Pb39.T19"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/aa;->a:[B

    .line 17
    const-string v0, "nmeug.f9/Om+L823"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/aa;->b:[B

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 27
    .line 31
    array-length v1, p0

    if-ne v1, v4, :cond_1

    .line 32
    aget-object v2, p0, v3

    .line 33
    aget-object v1, p0, v6

    .line 39
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/aa;->a:[B

    .line 42
    :cond_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 43
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/umeng/message/proguard/aa;->a:[B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 44
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/umeng/message/proguard/aa;->b:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 45
    invoke-virtual {v0, v6, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/umeng/message/proguard/ab;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1
    array-length v1, p0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 35
    aget-object v2, p0, v3

    .line 36
    aget-object v1, p0, v6

    .line 37
    aget-object v0, p0, v4

    goto :goto_0

    :cond_2
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method
