.class final Lcom/nut/blehunter/ui/du;
.super Ljava/lang/Object;
.source "NewFriendActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/dr;

.field final synthetic b:Lcom/nut/blehunter/ui/ds;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ds;Lcom/nut/blehunter/ui/dr;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nut/blehunter/ui/du;->b:Lcom/nut/blehunter/ui/ds;

    iput-object p2, p0, Lcom/nut/blehunter/ui/du;->a:Lcom/nut/blehunter/ui/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nut/blehunter/ui/du;->b:Lcom/nut/blehunter/ui/ds;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    new-instance v1, Lcom/nut/blehunter/ui/widget/m;

    iget-object v2, p0, Lcom/nut/blehunter/ui/du;->b:Lcom/nut/blehunter/ui/ds;

    iget-object v2, v2, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    iget-object v2, v2, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    new-instance v3, Lcom/nut/blehunter/ui/dv;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/dv;-><init>(Lcom/nut/blehunter/ui/du;)V

    invoke-direct {v1, v2, p1, v3}, Lcom/nut/blehunter/ui/widget/m;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;Lcom/nut/blehunter/ui/widget/m;)Lcom/nut/blehunter/ui/widget/m;

    .line 211
    const/4 v0, 0x0

    return v0
.end method
