.class public Lcom/umeng/message/UmengMessageBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UmengMessageBootReceiver.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/Runnable;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UmengMessageBootReceiver;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    new-instance v0, Lcom/umeng/message/UmengMessageBootReceiver$1;

    invoke-direct {v0, p0}, Lcom/umeng/message/UmengMessageBootReceiver$1;-><init>(Lcom/umeng/message/UmengMessageBootReceiver;)V

    iput-object v0, p0, Lcom/umeng/message/UmengMessageBootReceiver;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/umeng/message/UmengMessageBootReceiver;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/umeng/message/UmengMessageBootReceiver;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    sget-object v0, Lcom/umeng/message/UmengMessageBootReceiver;->b:Ljava/lang/String;

    const-string v1, "Boot this system , UmengMessageBootReceiver onReceive()"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    sget-object v0, Lcom/umeng/message/UmengMessageBootReceiver;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iput-object p1, p0, Lcom/umeng/message/UmengMessageBootReceiver;->c:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/umeng/message/UmengMessageBootReceiver;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/umeng/message/UmengMessageBootReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
