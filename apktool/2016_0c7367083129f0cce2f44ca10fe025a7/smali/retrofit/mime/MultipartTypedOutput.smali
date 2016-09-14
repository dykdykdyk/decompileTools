.class public final Lretrofit/mime/MultipartTypedOutput;
.super Ljava/lang/Object;
.source "MultipartTypedOutput.java"

# interfaces
.implements Lretrofit/mime/TypedOutput;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final footer:[B

.field private length:J

.field private final mimeParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/mime/MultipartTypedOutput$MimePart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit/mime/MultipartTypedOutput;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    .line 81
    iput-object p1, p0, Lretrofit/mime/MultipartTypedOutput;->boundary:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lretrofit/mime/MultipartTypedOutput;->buildBoundary(Ljava/lang/String;ZZ)[B

    move-result-object v0

    iput-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->footer:[B

    .line 83
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->footer:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    .line 84
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;ZZ)[B
    .locals 1

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lretrofit/mime/MultipartTypedOutput;->buildBoundary(Ljava/lang/String;ZZ)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lretrofit/mime/TypedOutput;)[B
    .locals 1

    .prologue
    .line 27
    invoke-static {p0, p1}, Lretrofit/mime/MultipartTypedOutput;->buildHeader(Ljava/lang/String;Lretrofit/mime/TypedOutput;)[B

    move-result-object v0

    return-object v0
.end method

.method private static buildBoundary(Ljava/lang/String;ZZ)[B
    .locals 3

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    if-nez p1, :cond_0

    .line 142
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    if-eqz p2, :cond_1

    .line 147
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to write multipart boundary"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static buildHeader(Ljava/lang/String;Lretrofit/mime/TypedOutput;)[B
    .locals 6

    .prologue
    .line 158
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->fileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->fileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    const-string v1, "\"\r\nContent-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 168
    const-string v1, "\r\nContent-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    const-string v1, "\r\nContent-Transfer-Encoding: binary\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to write multipart header"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Part name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Part body must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    new-instance v0, Lretrofit/mime/MultipartTypedOutput$MimePart;

    iget-object v1, p0, Lretrofit/mime/MultipartTypedOutput;->boundary:Ljava/lang/String;

    iget-object v2, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lretrofit/mime/MultipartTypedOutput$MimePart;-><init>(Ljava/lang/String;Lretrofit/mime/TypedOutput;Ljava/lang/String;Z)V

    .line 105
    iget-object v1, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v0}, Lretrofit/mime/MultipartTypedOutput$MimePart;->size()J

    move-result-wide v0

    .line 108
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    .line 109
    iput-wide v4, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 110
    :cond_3
    iget-wide v2, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 111
    iget-wide v2, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    goto :goto_0
.end method

.method public final fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPartCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final getParts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/mime/MultipartTypedOutput$MimePart;

    .line 89
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    invoke-virtual {v0, v3}, Lretrofit/mime/MultipartTypedOutput$MimePart;->writeTo(Ljava/io/OutputStream;)V

    .line 91
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    return-object v1
.end method

.method public final length()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    return-wide v0
.end method

.method public final mimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/form-data; boundary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lretrofit/mime/MultipartTypedOutput;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/mime/MultipartTypedOutput$MimePart;

    .line 133
    invoke-virtual {v0, p1}, Lretrofit/mime/MultipartTypedOutput$MimePart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->footer:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 136
    return-void
.end method
