.class final Lcom/nut/blehunter/ui/gj;
.super Lcom/nut/blehunter/rxApi/j;
.source "ShareManageActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/ui/ShareManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ShareManageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/nut/blehunter/ui/gj;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/gj;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nut/blehunter/ui/gj;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 158
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x13c

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/nut/blehunter/ui/gj;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->a(Lcom/nut/blehunter/ui/ShareManageActivity;)Lcom/nut/blehunter/ui/gl;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/gj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/gl;->a(Lcom/nut/blehunter/ui/gl;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/nut/blehunter/ui/gj;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/gj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/ShareManageActivity;->a(Lcom/nut/blehunter/ui/ShareManageActivity;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nut/blehunter/ui/gj;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 151
    iget-object v0, p0, Lcom/nut/blehunter/ui/gj;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->a(Lcom/nut/blehunter/ui/ShareManageActivity;)Lcom/nut/blehunter/ui/gl;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/gj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/gl;->a(Lcom/nut/blehunter/ui/gl;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/nut/blehunter/ui/gj;->b:Lcom/nut/blehunter/ui/ShareManageActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/gj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/ShareManageActivity;->a(Lcom/nut/blehunter/ui/ShareManageActivity;Ljava/lang/String;)V

    .line 153
    return-void
.end method
