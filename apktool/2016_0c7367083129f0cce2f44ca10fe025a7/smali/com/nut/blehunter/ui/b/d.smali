.class public final Lcom/nut/blehunter/ui/b/d;
.super Lcom/nut/blehunter/ui/b/h;
.source "AddFriendByEmailFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/AddFriendActivity;

    .line 80
    if-eqz v0, :cond_0

    .line 2112
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/AddFriendActivity;->invalidateOptionsMenu()V

    .line 83
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/AddFriendActivity;

    .line 56
    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    const v2, 0x7f0601bc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/nut/blehunter/ui/b/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/AddFriendActivity;->b(Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "add_friend_share_nut"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x7f0d019f
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    const v0, 0x7f03006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 44
    const v0, 0x7f0d019d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/d;->a:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f0d019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/d;->b:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/d;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-object v1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
