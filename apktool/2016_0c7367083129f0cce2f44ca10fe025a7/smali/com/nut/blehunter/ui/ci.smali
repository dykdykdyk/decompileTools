.class final Lcom/nut/blehunter/ui/ci;
.super Ljava/lang/Object;
.source "LookForShareActivity.java"

# interfaces
.implements Lrx/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/f",
        "<",
        "Ljava/lang/String;",
        "Lrx/h",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Lcom/nut/blehunter/ui/LookForShareActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LookForShareActivity;Lcom/nut/blehunter/entity/Nut;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/nut/blehunter/ui/ci;->b:Lcom/nut/blehunter/ui/LookForShareActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ci;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 209
    check-cast p1, Ljava/lang/String;

    .line 1212
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/ci;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Nut;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ci;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;I)V

    .line 1215
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ci;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1216
    const-string v1, "multipart/form-data"

    invoke-static {v1}, Lokhttp3/ai;->a(Ljava/lang/String;)Lokhttp3/ai;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/au;->create(Lokhttp3/ai;Ljava/io/File;)Lokhttp3/au;

    move-result-object v1

    .line 1218
    const-string v2, "file"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lokhttp3/al;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/au;)Lokhttp3/al;

    move-result-object v0

    .line 1220
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->e()Lcom/nut/blehunter/rxApi/service/UploadFileService;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/ci;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    const-string v3, "ARTICLE_IMG"

    invoke-interface {v1, v2, v3, v0}, Lcom/nut/blehunter/rxApi/service/UploadFileService;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lokhttp3/al;)Lrx/h;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1222
    :cond_0
    invoke-static {p1}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method
