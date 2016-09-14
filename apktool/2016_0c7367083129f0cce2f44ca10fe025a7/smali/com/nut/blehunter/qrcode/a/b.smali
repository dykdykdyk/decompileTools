.class final Lcom/nut/blehunter/qrcode/a/b;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


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
.field final synthetic a:Lcom/nut/blehunter/qrcode/a/a;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/qrcode/a/a;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/a/b;->a:Lcom/nut/blehunter/qrcode/a/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nut/blehunter/qrcode/a/a;B)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/nut/blehunter/qrcode/a/b;-><init>(Lcom/nut/blehunter/qrcode/a/a;)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 117
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a/b;->a:Lcom/nut/blehunter/qrcode/a/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/a/a;->a()V

    .line 122
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
