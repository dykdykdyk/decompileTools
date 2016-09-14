.class final Lcom/nut/blehunter/ui/dr;
.super Landroid/support/v7/widget/dx;
.source "NewFriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/dx",
        "<",
        "Lcom/nut/blehunter/ui/ds;",
        ">;"
    }
.end annotation


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/UnhandledFriend;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/nut/blehunter/ui/NewFriendActivity;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/NewFriendActivity;)V
    .locals 1

    .prologue
    .line 135
    iput-object p1, p0, Lcom/nut/blehunter/ui/dr;->d:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 136
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/dr;->e:Landroid/view/LayoutInflater;

    .line 137
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 4

    .prologue
    .line 130
    .line 2141
    new-instance v0, Lcom/nut/blehunter/ui/ds;

    iget-object v1, p0, Lcom/nut/blehunter/ui/dr;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030094

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/ds;-><init>(Lcom/nut/blehunter/ui/dr;Landroid/view/View;)V

    .line 130
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/ex;I)V
    .locals 3

    .prologue
    .line 130
    check-cast p1, Lcom/nut/blehunter/ui/ds;

    .line 1146
    iget-object v0, p0, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/UnhandledFriend;

    .line 1147
    iget-object v1, p1, Lcom/nut/blehunter/ui/ds;->m:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget-object v2, v0, Lcom/nut/blehunter/entity/UnhandledFriend;->d:Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;

    iget-object v2, v2, Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1148
    iget-object v1, p1, Lcom/nut/blehunter/ui/ds;->n:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nut/blehunter/entity/UnhandledFriend;->d:Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;

    iget-object v0, v0, Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
