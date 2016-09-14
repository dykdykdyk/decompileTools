.class final Lcom/nut/blehunter/ui/as;
.super Lcom/nut/blehunter/rxApi/j;
.source "FriendManageActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/ui/FriendManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/FriendManageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/nut/blehunter/ui/as;->b:Lcom/nut/blehunter/ui/FriendManageActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/as;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/nut/blehunter/ui/as;->b:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 272
    iget-object v0, p0, Lcom/nut/blehunter/ui/as;->b:Lcom/nut/blehunter/ui/FriendManageActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 273
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/nut/blehunter/ui/as;->b:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 263
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/j;->a(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/nut/blehunter/ui/as;->b:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/as;->a:Ljava/lang/String;

    .line 1228
    const-string v2, "sync_time"

    invoke-static {v0, v2}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync_date_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 265
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nut/blehunter/ui/as;->b:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/FriendManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/rec"

    invoke-static {v1, v2}, Lcom/nut/blehunter/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/as;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 267
    return-void
.end method
