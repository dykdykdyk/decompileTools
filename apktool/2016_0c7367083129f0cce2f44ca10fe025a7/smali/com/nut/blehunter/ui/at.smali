.class final Lcom/nut/blehunter/ui/at;
.super Landroid/support/v7/widget/dx;
.source "FriendManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/dx",
        "<",
        "Lcom/nut/blehunter/ui/au;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/nut/blehunter/ui/FriendManageActivity;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/FriendManageActivity;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Lcom/nut/blehunter/ui/at;->d:Lcom/nut/blehunter/ui/FriendManageActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/at;->c:Ljava/util/ArrayList;

    .line 284
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/at;->e:Landroid/view/LayoutInflater;

    .line 285
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 4

    .prologue
    .line 277
    .line 2289
    new-instance v0, Lcom/nut/blehunter/ui/au;

    iget-object v1, p0, Lcom/nut/blehunter/ui/at;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f03008f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/au;-><init>(Lcom/nut/blehunter/ui/at;Landroid/view/View;)V

    .line 277
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/ex;I)V
    .locals 3

    .prologue
    .line 277
    check-cast p1, Lcom/nut/blehunter/ui/au;

    .line 1294
    iget-object v0, p0, Lcom/nut/blehunter/ui/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 1295
    if-eqz v0, :cond_0

    .line 1296
    iget-object v1, p1, Lcom/nut/blehunter/ui/au;->m:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget-object v2, v0, Lcom/nut/blehunter/entity/Friend;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1297
    iget-object v1, p1, Lcom/nut/blehunter/ui/au;->n:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Friend;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nut/blehunter/ui/at;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
