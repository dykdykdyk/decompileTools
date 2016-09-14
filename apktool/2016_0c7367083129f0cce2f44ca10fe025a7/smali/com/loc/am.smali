.class final Lcom/loc/am;
.super Lcom/loc/ag;
.source "DynamicClassLoader.java"


# instance fields
.field private g:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/eo;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0, p1, p2}, Lcom/loc/ag;-><init>(Landroid/content/Context;Lcom/loc/eo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/am;->g:Ljava/security/PublicKey;

    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/loc/aj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "dexPath or dexOutputDir is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/aj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "file not exist!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13000
    :try_start_0
    iget-object v3, p0, Lcom/loc/am;->c:Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    .line 0
    :goto_0
    new-instance v2, Lcom/loc/an;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/loc/an;-><init>(Lcom/loc/am;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/loc/an;->start()V

    :cond_4
    return-void

    .line 13000
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/am;->b()V

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/am;->c:Ldalvik/system/DexFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DynamicClassLoader"

    const-string v2, "loadDexFile()"

    .line 14000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 13000
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "load dex fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "DyLoader"

    const-string v3, "loadJa"

    .line 1000
    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0
.end method

.method private a(Lcom/loc/o;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 0
    iget-object v0, p0, Lcom/loc/am;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/am;->e:Lcom/loc/eo;

    invoke-static {p1, p2, v1, v0}, Lcom/loc/aj;->a(Lcom/loc/o;Ljava/lang/String;Ljava/lang/String;Lcom/loc/eo;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/loc/al;->a(Lcom/loc/o;Ljava/lang/String;)Lcom/loc/aq;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/am;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/ar;

    invoke-static {v1}, Lcom/loc/ek;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/loc/am;->e:Lcom/loc/eo;

    invoke-virtual {v1}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/loc/am;->e:Lcom/loc/eo;

    invoke-virtual {v1}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/loc/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "useod"

    .line 11000
    iput-object v1, v0, Lcom/loc/ar;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Lcom/loc/ar;->a()Lcom/loc/aq;

    move-result-object v0

    invoke-static {p2}, Lcom/loc/aq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12000
    invoke-virtual {p1, v0, v1}, Lcom/loc/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move v0, v6

    .line 0
    goto :goto_0
.end method

.method private a(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    const/4 v2, 0x0

    .line 3000
    :try_start_0
    iget-object v0, p0, Lcom/loc/am;->g:Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "classes.dex"

    invoke-virtual {v3, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move v0, v1

    :goto_2
    return v0

    .line 3000
    :cond_0
    :try_start_4
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    const-string v3, "MIIDRzCCAi+gAwIBAgIEeuDbsDANBgkqhkiG9w0BAQsFADBTMQswCQYDVQQGEwJjbjELMAkGA1UECBMCYmoxCzAJBgNVBAcTAmJqMQ0wCwYDVQQKEwRvcGVuMQ4wDAYDVQQLEwVnYW9kZTELMAkGA1UEAxMCUWkwIBcNMTYwODAxMDE0ODMwWhgPMjA3MTA1MDUwMTQ4MzBaMFMxCzAJBgNVBAYTAmNuMQswCQYDVQQIEwJiajELMAkGA1UEBxMCYmoxDTALBgNVBAoTBG9wZW4xDjAMBgNVBAsTBWdhb2RlMQswCQYDVQQDEwJRaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKpL13mZm4q6AFP5csQE7130Lwq8m+HICy3rBARd9vbw5Cb1wFF96KdhC5P/aASlrPb+6MSyP1nE97p3ygKJWsgxExyvVuOvh1KUqOFuK15oY7JKTk6L4eLCbkBJZV2DLffpW0HGiRpmFG8LJR0sjNOoubSd5R/6XoBwyRglsyVHprjrK2qDRvT3Edgtfvxp4HnUzMsDD3CJRtgsaDw6ECyF7fhYKEz9I6OEEVsPlpbgzRmhSeFDL77/k1mhPve1ZyKGlPcxvSSdLSAlV0hzr5NKlujHll7BbouwDnr6l/0O44AzZ0V/ieft1iBkSLirnlm56uI/8jdh8ANrD1fW4ZUCAwEAAaMhMB8wHQYDVR0OBBYEFBzudtI5UKRvHGDV+VQRzItIj3PqMA0GCSqGSIb3DQEBCwUAA4IBAQBS2EGndgvIBnf7Ce4IhDbm7F5h4L+6TYGmT9acnQbEFY8oUoFblMDgg+cETT44jU/elwbJJVmKhj/WRQl+AdSALBAgDvxq1AcjlGg+c8H3pa2BWlrxNJP9MFLIEI5bA8m5og/Epjut50uemZ9ggoNmJeW0N/a6D8euhYJKOYngUQqDu6cwLj1Ec0ptwrNRbvRXXgzjfJMPE/ii4K/b8JZ+QN2d/bl7QEvKWBSzVueZifV659qAbMh6C9TCVstWWfV53Z3Vyt+duDNU5ed7aWao42Ppw4VHslrJW0V6BXDUhhzgXx28UWY78W7LmYGCtC8PfDId2+k4tPoTNPM6HHP5"

    invoke-static {v3}, Lcom/loc/ej;->b(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/am;->g:Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v3, "DyLoader"

    const-string v4, "init"

    .line 4000
    invoke-static {v0, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 0
    :catch_1
    move-exception v0

    :goto_3
    :try_start_6
    const-string v3, "DyLoader"

    const-string v4, "verify"

    .line 8000
    invoke-static {v0, v3, v4}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 0
    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_4
    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "DyLoader"

    const-string v3, "verify1"

    .line 5000
    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 0
    :cond_2
    :try_start_8
    invoke-static {v3, v0}, Lcom/loc/am;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_9
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    :goto_5
    move v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v2, "DyLoader"

    const-string v3, "verify1"

    .line 6000
    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 0
    :cond_3
    :try_start_a
    invoke-direct {p0, v0}, Lcom/loc/am;->a([Ljava/security/cert/Certificate;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v0

    :try_start_b
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    const-string v2, "DyLoader"

    const-string v3, "verify1"

    .line 7000
    invoke-static {v1, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 0
    :catch_5
    move-exception v0

    const-string v2, "DyLoader"

    const-string v3, "verify1"

    .line 9000
    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 0
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v2, :cond_4

    :try_start_c
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    :cond_4
    :goto_7
    throw v0

    :catch_6
    move-exception v1

    const-string v2, "DyLoader"

    const-string v3, "verify1"

    .line 10000
    invoke-static {v1, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 0
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private a([Ljava/security/cert/Certificate;)Z
    .locals 3

    .prologue
    .line 0
    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/loc/am;->g:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "DyLoader"

    const-string v2, "check"

    .line 2000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    :try_start_0
    new-instance v1, Lcom/loc/o;

    invoke-static {}, Lcom/loc/ap;->b()Lcom/loc/ap;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/loc/al;->a(Lcom/loc/o;Ljava/lang/String;)Lcom/loc/aq;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 16000
    iget-object v3, v3, Lcom/loc/aq;->d:Ljava/lang/String;

    .line 0
    iput-object v3, p0, Lcom/loc/am;->f:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/loc/am;->e:Lcom/loc/eo;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 17000
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/loc/am;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/loc/am;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/loc/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4, v3}, Lcom/loc/aj;->a(Lcom/loc/o;Ljava/lang/String;Ljava/lang/String;Lcom/loc/eo;)Z

    move-result v0

    .line 0
    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/am;->d:Z

    iget-object v0, p0, Lcom/loc/am;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/am;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/am;->e:Lcom/loc/eo;

    invoke-static {v0, v1, v3}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/o;Lcom/loc/eo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v0, p0, Lcom/loc/am;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/am;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/am;->e:Lcom/loc/eo;

    invoke-virtual {p0, v0, v3}, Lcom/loc/am;->a(Landroid/content/Context;Lcom/loc/eo;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/am;->f:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/loc/am;->a(Lcom/loc/o;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/am;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/am;->e:Lcom/loc/eo;

    invoke-virtual {p0, v0, v1}, Lcom/loc/am;->a(Landroid/content/Context;Lcom/loc/eo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DynamicClassLoader"

    const-string v2, "verifyDynamicSDK()"

    .line 18000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/o;)V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/loc/am;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/loc/ek;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/am;->e:Lcom/loc/eo;

    invoke-virtual {v0}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/am;->e:Lcom/loc/eo;

    invoke-virtual {v0}, Lcom/loc/eo;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/loc/ar;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/loc/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "useod"

    .line 19000
    iput-object v2, v0, Lcom/loc/ar;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Lcom/loc/ar;->a()Lcom/loc/aq;

    move-result-object v0

    invoke-static {v1}, Lcom/loc/aq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20000
    invoke-virtual {p4, v0, v1}, Lcom/loc/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 0
    :cond_1
    return-void
.end method

.method protected final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/am;->c:Ldalvik/system/DexFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "DynamicClassLoader"

    const-string v2, "findCl"

    .line 15000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/am;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/loc/am;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/loc/am;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
