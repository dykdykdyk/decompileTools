.class final Lcom/nut/blehunter/ui/gs;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nut/blehunter/ui/gs;->a:Lcom/nut/blehunter/ui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v2, p0, Lcom/nut/blehunter/ui/gs;->a:Lcom/nut/blehunter/ui/WelcomeActivity;

    .line 1088
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1089
    invoke-static {}, Lcom/nut/blehunter/ui/GuidePagerActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 1089
    :goto_0
    if-nez v0, :cond_2

    .line 1090
    invoke-static {}, Lcom/nut/blehunter/ui/GuidePagerActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 2100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2103
    const-string v4, "guide_prefs"

    invoke-virtual {v2, v4, v1}, Lcom/nut/blehunter/ui/WelcomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2104
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2105
    const/4 v4, 0x1

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2106
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1091
    :cond_0
    const-class v0, Lcom/nut/blehunter/ui/GuidePagerActivity;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1095
    :goto_1
    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1096
    invoke-virtual {v2}, Lcom/nut/blehunter/ui/WelcomeActivity;->finish()V

    .line 46
    return-void

    .line 1113
    :cond_1
    const-string v4, "guide_prefs"

    invoke-virtual {v2, v4, v1}, Lcom/nut/blehunter/ui/WelcomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1114
    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 1093
    :cond_2
    const-class v0, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method
