.class final Lcom/nut/blehunter/o;
.super Landroid/content/BroadcastReceiver;
.source "HomePressedWatcher.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final synthetic c:Lcom/nut/blehunter/n;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/n;)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nut/blehunter/o;->c:Lcom/nut/blehunter/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const-string v0, "reason"

    iput-object v0, p0, Lcom/nut/blehunter/o;->a:Ljava/lang/String;

    .line 44
    const-string v0, "homekey"

    iput-object v0, p0, Lcom/nut/blehunter/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const-string v0, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/o;->c:Lcom/nut/blehunter/n;

    .line 1017
    iget-object v1, v1, Lcom/nut/blehunter/n;->a:Landroid/content/Context;

    .line 54
    const-class v2, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "com.nutspace.action.app.background"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "last_activity"

    iget-object v2, p0, Lcom/nut/blehunter/o;->c:Lcom/nut/blehunter/n;

    .line 2017
    iget-object v2, v2, Lcom/nut/blehunter/n;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/nut/blehunter/o;->c:Lcom/nut/blehunter/n;

    .line 3017
    iget-object v1, v1, Lcom/nut/blehunter/n;->a:Landroid/content/Context;

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    iget-object v0, p0, Lcom/nut/blehunter/o;->c:Lcom/nut/blehunter/n;

    .line 4017
    iget-object v0, v0, Lcom/nut/blehunter/n;->a:Landroid/content/Context;

    .line 58
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/nut/blehunter/o;->c:Lcom/nut/blehunter/n;

    .line 5017
    iget-object v0, v0, Lcom/nut/blehunter/n;->a:Landroid/content/Context;

    .line 59
    instance-of v0, v0, Lcom/nut/blehunter/ui/Main2Activity;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nut/blehunter/o;->c:Lcom/nut/blehunter/n;

    .line 6017
    iget-object v0, v0, Lcom/nut/blehunter/n;->a:Landroid/content/Context;

    .line 60
    check-cast v0, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/Main2Activity;->c()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/o;->c:Lcom/nut/blehunter/n;

    .line 7017
    iget-object v0, v0, Lcom/nut/blehunter/n;->a:Landroid/content/Context;

    .line 62
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    :cond_1
    return-void
.end method
