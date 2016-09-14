.class public final Lcom/nut/blehunter/ui/b/aa;
.super Lcom/nut/blehunter/ui/b/h;
.source "NotDisturbWifiFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/nut/blehunter/entity/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/h;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/b/aa;->a:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/nut/blehunter/ui/b/aa;->b:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/nut/blehunter/ui/b/aa;->c:I

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/aa;)Lcom/nut/blehunter/entity/User;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->h:Lcom/nut/blehunter/entity/User;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const v2, 0x7f060176

    const v1, 0x7f060175

    .line 133
    const-string v0, "home"

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :goto_0
    const-string v0, "company"

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 144
    :goto_1
    const-string v0, "other"

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 149
    :goto_2
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 129
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b/aa;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    const-string v1, "WIFIConf"

    const-string v2, "home"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    const-string v1, "WIFIConf"

    const-string v2, "company"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    const-string v1, "WIFIConf"

    const-string v2, "other"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 90
    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/entity/User;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    const-string v1, "com.nutspace.action.region.change"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/b/aa;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/aa;->b()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    return-void

    .line 101
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/b/aa;->a(I)V

    goto :goto_0

    .line 104
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/b/aa;->a(I)V

    goto :goto_0

    .line 107
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/b/aa;->a(I)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0116
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    const v0, 0x7f030072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    const v0, 0x7f0d0115

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->d:Landroid/widget/CheckBox;

    .line 48
    const v0, 0x7f0d0117

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->e:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0d0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->f:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0d011b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->g:Landroid/widget/TextView;

    .line 52
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->h:Lcom/nut/blehunter/entity/User;

    .line 1066
    const v0, 0x7f0d0116

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    const v0, 0x7f0d0118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    const v0, 0x7f0d011a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->h:Lcom/nut/blehunter/entity/User;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->d:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/aa;->h:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/User;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aa;->d:Landroid/widget/CheckBox;

    new-instance v2, Lcom/nut/blehunter/ui/b/ab;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/ab;-><init>(Lcom/nut/blehunter/ui/b/aa;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/aa;->a()V

    .line 55
    return-object v1
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/h;->onResume()V

    .line 61
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/aa;->a()V

    .line 62
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/aa;->b()V

    .line 63
    return-void
.end method
