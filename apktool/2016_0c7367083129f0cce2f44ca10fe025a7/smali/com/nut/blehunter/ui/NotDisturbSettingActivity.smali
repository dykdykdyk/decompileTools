.class public Lcom/nut/blehunter/ui/NotDisturbSettingActivity;
.super Lcom/nut/blehunter/ui/b;
.source "NotDisturbSettingActivity.java"


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/nut/blehunter/ui/a/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f06017f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->a(I)V

    .line 1034
    new-instance v0, Lcom/nut/blehunter/ui/b/aa;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/aa;-><init>()V

    .line 1035
    new-instance v1, Lcom/nut/blehunter/ui/b/x;

    invoke-direct {v1}, Lcom/nut/blehunter/ui/b/x;-><init>()V

    .line 1037
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    const v3, 0x7f060172

    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    const v3, 0x7f060173

    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 1046
    new-instance v0, Lcom/nut/blehunter/ui/a/p;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/a/p;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->b:Lcom/nut/blehunter/ui/a/p;

    .line 1047
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->b:Lcom/nut/blehunter/ui/a/p;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1049
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    .line 1050
    iget-object v1, p0, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 31
    return-void
.end method
