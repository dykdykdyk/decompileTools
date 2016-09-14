.class final Lcom/nut/blehunter/qrcode/l;
.super Landroid/os/AsyncTask;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/qrcode/k;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/qrcode/k;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/l;->a:Lcom/nut/blehunter/qrcode/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nut/blehunter/qrcode/k;B)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/nut/blehunter/qrcode/l;-><init>(Lcom/nut/blehunter/qrcode/k;)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 106
    const-wide/32 v0, 0x493e0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 107
    invoke-static {}, Lcom/nut/blehunter/qrcode/k;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finishing activity due to inactivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/l;->a:Lcom/nut/blehunter/qrcode/k;

    invoke-static {v0}, Lcom/nut/blehunter/qrcode/k;->b(Lcom/nut/blehunter/qrcode/k;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
