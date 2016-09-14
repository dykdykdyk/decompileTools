.class public Lcom/nut/blehunter/ui/NotDisturbActivity;
.super Lcom/nut/blehunter/ui/b;
.source "NotDisturbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Landroid/widget/CheckBox;

.field private e:Lcom/nut/blehunter/entity/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->a:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->b:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->c:I

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NotDisturbActivity;)Lcom/nut/blehunter/entity/User;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->e:Lcom/nut/blehunter/entity/User;

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/NotDisturbActivity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const v5, 0x7f0d011b

    const v4, 0x7f0d0119

    const v3, 0x7f0d0117

    const v2, 0x7f060176

    const v1, 0x7f060175

    .line 126
    const-string v0, "home"

    invoke-static {v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :goto_0
    const-string v0, "company"

    invoke-static {v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :goto_1
    const-string v0, "other"

    invoke-static {v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p0, v5}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    :goto_2
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p0, v5}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 122
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void

    .line 109
    :pswitch_0
    const-class v1, Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    const-string v1, "WIFIConf"

    const-string v2, "home"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 114
    :pswitch_1
    const-class v1, Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    const-string v1, "WIFIConf"

    const-string v2, "company"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 118
    :pswitch_2
    const-class v1, Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    const-string v1, "WIFIConf"

    const-string v2, "other"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 83
    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/entity/User;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    const-string v1, "com.nutspace.action.region.change"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 153
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    :pswitch_0
    return-void

    .line 94
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->c(I)V

    goto :goto_0

    .line 97
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->c(I)V

    goto :goto_0

    .line 100
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->c(I)V

    goto :goto_0

    .line 92
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f060177

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->a(I)V

    .line 42
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->e:Lcom/nut/blehunter/entity/User;

    .line 1055
    const v0, 0x7f0d0116

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    const v0, 0x7f0d011a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    const v0, 0x7f0d0115

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->d:Landroid/widget/CheckBox;

    .line 1061
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->e:Lcom/nut/blehunter/entity/User;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->d:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->e:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/User;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotDisturbActivity;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/nut/blehunter/ui/dw;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/dw;-><init>(Lcom/nut/blehunter/ui/NotDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->c()V

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onResume()V

    .line 50
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->c()V

    .line 51
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NotDisturbActivity;->d()V

    .line 52
    return-void
.end method
