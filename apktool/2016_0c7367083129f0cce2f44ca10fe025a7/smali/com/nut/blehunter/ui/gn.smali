.class final Lcom/nut/blehunter/ui/gn;
.super Ljava/lang/Object;
.source "ShareManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/gl;

.field final synthetic b:Lcom/nut/blehunter/ui/gm;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/gm;Lcom/nut/blehunter/ui/gl;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/nut/blehunter/ui/gn;->b:Lcom/nut/blehunter/ui/gm;

    iput-object p2, p0, Lcom/nut/blehunter/ui/gn;->a:Lcom/nut/blehunter/ui/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nut/blehunter/ui/gn;->b:Lcom/nut/blehunter/ui/gm;

    iget-object v0, v0, Lcom/nut/blehunter/ui/gm;->o:Lcom/nut/blehunter/ui/gl;

    .line 1197
    iget-object v0, v0, Lcom/nut/blehunter/ui/gl;->c:Ljava/util/ArrayList;

    .line 270
    iget-object v1, p0, Lcom/nut/blehunter/ui/gn;->b:Lcom/nut/blehunter/ui/gm;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/gm;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/ShareUserInfo;

    .line 271
    iget-object v1, p0, Lcom/nut/blehunter/ui/gn;->b:Lcom/nut/blehunter/ui/gm;

    iget-object v1, v1, Lcom/nut/blehunter/ui/gm;->o:Lcom/nut/blehunter/ui/gl;

    iget-object v1, v1, Lcom/nut/blehunter/ui/gl;->d:Lcom/nut/blehunter/ui/ShareManageActivity;

    iget-object v2, p0, Lcom/nut/blehunter/ui/gn;->b:Lcom/nut/blehunter/ui/gm;

    iget-object v2, v2, Lcom/nut/blehunter/ui/gm;->o:Lcom/nut/blehunter/ui/gl;

    iget-object v2, v2, Lcom/nut/blehunter/ui/gl;->d:Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/ShareManageActivity;->b(Lcom/nut/blehunter/ui/ShareManageActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->a(Lcom/nut/blehunter/ui/ShareManageActivity;Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/entity/ShareUserInfo;)V

    .line 272
    return-void
.end method
