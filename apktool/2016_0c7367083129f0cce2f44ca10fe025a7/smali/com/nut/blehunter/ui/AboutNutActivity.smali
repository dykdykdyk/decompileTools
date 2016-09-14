.class public Lcom/nut/blehunter/ui/AboutNutActivity;
.super Lcom/nut/blehunter/ui/b;
.source "AboutNutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 30
    const/16 v0, 0x14

    iput v0, p0, Lcom/nut/blehunter/ui/AboutNutActivity;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    :pswitch_0
    return-void

    .line 85
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    const-class v1, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    const-string v1, "URL"

    sget-object v2, Lcom/nut/blehunter/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    const-class v1, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    const-string v1, "URL"

    sget-object v2, Lcom/nut/blehunter/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1106
    :pswitch_3
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 1107
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->version()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/a;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/a;-><init>(Lcom/nut/blehunter/ui/AboutNutActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 98
    const-string v0, "new_version_check"

    .line 1281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0079
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f06016d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->a(I)V

    .line 1041
    const-string v1, ""

    .line 1042
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    :try_start_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/AboutNutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/AboutNutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :try_start_1
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/AboutNutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/AboutNutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 1058
    :goto_0
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1059
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void

    .line 1055
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    const-string v2, "get version name exception"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
