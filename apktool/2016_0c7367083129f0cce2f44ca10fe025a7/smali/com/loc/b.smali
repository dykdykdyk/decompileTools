.class final Lcom/loc/b;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/Messenger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/a;


# direct methods
.method constructor <init>(Lcom/loc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/b;->a:Lcom/loc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Landroid/os/Messenger;
    .locals 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->i:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/loc/b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->i:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/loc/b;->a()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method
