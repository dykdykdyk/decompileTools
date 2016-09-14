.class final Lcom/nut/blehunter/service/d;
.super Ljava/lang/Object;
.source "NutTrackerService.java"

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
.field final synthetic a:Lcom/nut/blehunter/entity/User;

.field final synthetic b:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/User;)V
    .locals 0

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/nut/blehunter/service/d;->b:Lcom/nut/blehunter/service/NutTrackerService;

    iput-object p2, p0, Lcom/nut/blehunter/service/d;->a:Lcom/nut/blehunter/entity/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1209
    check-cast p1, Ljava/lang/String;

    .line 2212
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/service/d;->a:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/service/d;->a:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2213
    :cond_0
    invoke-static {p1}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2215
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nut/blehunter/service/d;->a:Lcom/nut/blehunter/entity/User;

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2216
    const-string v1, "multipart/form-data"

    invoke-static {v1}, Lokhttp3/ai;->a(Ljava/lang/String;)Lokhttp3/ai;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/au;->create(Lokhttp3/ai;Ljava/io/File;)Lokhttp3/au;

    move-result-object v1

    .line 2218
    const-string v2, "file"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lokhttp3/al;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/au;)Lokhttp3/al;

    move-result-object v0

    .line 2220
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->e()Lcom/nut/blehunter/rxApi/service/UploadFileService;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AVATAR"

    invoke-interface {v1, v2, v3, v0}, Lcom/nut/blehunter/rxApi/service/UploadFileService;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lokhttp3/al;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method
