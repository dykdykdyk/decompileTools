.class public final Lcom/nut/blehunter/ui/b/f;
.super Lcom/nut/blehunter/ui/b/h;
.source "AddFriendByPhoneFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/AddFriendActivity;

    .line 105
    if-eqz v0, :cond_0

    .line 2112
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/AddFriendActivity;->invalidateOptionsMenu()V

    .line 108
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    if-eqz p3, :cond_0

    .line 86
    sget-object v0, Lcom/bingerz/android/countrycodepicker/g;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 87
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/f;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/CountryCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x25c
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 64
    :pswitch_1
    new-instance v0, Lcom/bingerz/android/countrycodepicker/g;

    invoke-direct {v0}, Lcom/bingerz/android/countrycodepicker/g;-><init>()V

    .line 1028
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bingerz/android/countrycodepicker/g;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x25c

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/AddFriendActivity;

    .line 68
    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    const v2, 0x7f0601bc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/nut/blehunter/ui/b/f;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/AddFriendActivity;->b(Ljava/lang/String;)V

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "add_friend_share_nut"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d019f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 48
    const v0, 0x7f03006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    const v0, 0x7f0d01a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/f;->a:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0d01a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/f;->b:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f0d019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/f;->c:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/f;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/f;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/f;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/d/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-object v1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
