.class final Lcom/squareup/wire/ProtoAdapter$12;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$12;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter$12;->encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeString(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public final bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 354
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$12;->encodedSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final encodedSize(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 356
    invoke-static {p1}, Lcom/squareup/wire/ProtoWriter;->utf8Length(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
