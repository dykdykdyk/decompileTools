.class public Lcom/nut/blehunter/ui/AddFriendActivity;
.super Lcom/nut/blehunter/ui/b;
.source "AddFriendActivity.java"


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/nut/blehunter/ui/a/p;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->c:Z

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    const-string v1, "com.nutspace.action.resume.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v1, "show_tips"

    iget-boolean v2, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AddFriendActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AddFriendActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AddFriendActivity;->a(I)V

    .line 38
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/j;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->c:Z

    .line 1043
    new-instance v0, Lcom/nut/blehunter/ui/b/f;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/f;-><init>()V

    .line 1044
    new-instance v1, Lcom/nut/blehunter/ui/b/d;

    invoke-direct {v1}, Lcom/nut/blehunter/ui/b/d;-><init>()V

    .line 1046
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    const v3, 0x7f060196

    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/AddFriendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    const v3, 0x7f060195

    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/AddFriendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 1055
    new-instance v0, Lcom/nut/blehunter/ui/a/p;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/AddFriendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/a/p;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->b:Lcom/nut/blehunter/ui/a/p;

    .line 1056
    iget-object v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->b:Lcom/nut/blehunter/ui/a/p;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1058
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    .line 1059
    iget-object v1, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/AddFriendActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v3, 0x7f0e0002

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    const v0, 0x7f0d0246

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 82
    return v1

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->b:Lcom/nut/blehunter/ui/a/p;

    iget-object v3, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/a/p;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/f;

    .line 69
    if-eqz v0, :cond_0

    .line 1111
    iget-object v2, v0, Lcom/nut/blehunter/ui/b/f;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/f;->b:Landroid/widget/EditText;

    invoke-static {v2, v0}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    :goto_1
    move v2, v0

    .line 77
    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->b:Lcom/nut/blehunter/ui/a/p;

    iget-object v3, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/a/p;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/d;

    .line 76
    if-eqz v0, :cond_0

    .line 2086
    iget-object v3, v0, Lcom/nut/blehunter/ui/b/d;->a:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 2089
    iget-object v0, v0, Lcom/nut/blehunter/ui/b/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2090
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->b:Lcom/nut/blehunter/ui/a/p;

    iget-object v1, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/a/p;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/f;

    .line 92
    if-eqz v0, :cond_0

    .line 2115
    iget-object v1, v0, Lcom/nut/blehunter/ui/b/f;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2116
    iget-object v2, v0, Lcom/nut/blehunter/ui/b/f;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2118
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 2119
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v3

    const-string v4, "mobile"

    invoke-static {v1, v2}, Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;->createWithPhone(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/nut/blehunter/rxApi/service/FriendsService;->addFriend(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;)Lretrofit2/Call;

    move-result-object v1

    new-instance v3, Lcom/nut/blehunter/ui/b/g;

    invoke-direct {v3, v0, v2}, Lcom/nut/blehunter/ui/b/g;-><init>(Lcom/nut/blehunter/ui/b/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 95
    :cond_0
    const-string v0, "add_friend_with_phone"

    .line 2281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->b:Lcom/nut/blehunter/ui/a/p;

    iget-object v1, p0, Lcom/nut/blehunter/ui/AddFriendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/a/p;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/d;

    .line 100
    if-eqz v0, :cond_1

    .line 3094
    iget-object v1, v0, Lcom/nut/blehunter/ui/b/d;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3095
    invoke-static {v1}, Lcom/nut/blehunter/d/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3096
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0601e7

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    .line 103
    :cond_1
    :goto_1
    const-string v0, "add_friend_with_email"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3099
    :cond_2
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 3100
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v2

    const-string v3, "email"

    invoke-static {v1}, Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;->createWithEmail(Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nut/blehunter/rxApi/service/FriendsService;->addFriend(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;)Lretrofit2/Call;

    move-result-object v2

    new-instance v3, Lcom/nut/blehunter/ui/b/e;

    invoke-direct {v3, v0, v1}, Lcom/nut/blehunter/ui/b/e;-><init>(Lcom/nut/blehunter/ui/b/d;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x7f0d0246
        :pswitch_0
    .end packed-switch

    .line 89
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
