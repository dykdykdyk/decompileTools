.class final Lcom/nut/blehunter/service/m;
.super Landroid/content/BroadcastReceiver;
.source "NutTrackerService.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/nut/blehunter/service/m;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 174
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 177
    if-ne v2, v0, :cond_2

    .line 178
    sput-boolean v0, Lcom/nut/blehunter/ble/a;->a:Z

    goto :goto_0

    .line 179
    :cond_2
    if-nez v2, :cond_0

    .line 180
    sput-boolean v1, Lcom/nut/blehunter/ble/a;->a:Z

    goto :goto_0

    .line 183
    :cond_3
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 184
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/nut/blehunter/service/m;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-static {v0, p2}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/service/NutTrackerService;Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    :cond_4
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    iget-object v0, p0, Lcom/nut/blehunter/service/m;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-static {v0}, Lcom/nut/blehunter/service/NutTrackerService;->b(Lcom/nut/blehunter/service/NutTrackerService;)V

    goto :goto_0

    .line 189
    :cond_5
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    :goto_1
    iget-object v1, p0, Lcom/nut/blehunter/service/m;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-static {v1}, Lcom/nut/blehunter/service/NutTrackerService;->c(Lcom/nut/blehunter/service/NutTrackerService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/nut/blehunter/service/m;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-static {v1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/service/NutTrackerService;I)I

    .line 193
    iget-object v0, p0, Lcom/nut/blehunter/service/m;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-virtual {v0}, Lcom/nut/blehunter/service/NutTrackerService;->a()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 190
    goto :goto_1
.end method
