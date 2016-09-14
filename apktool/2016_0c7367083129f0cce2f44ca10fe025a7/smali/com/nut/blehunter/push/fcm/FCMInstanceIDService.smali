.class public Lcom/nut/blehunter/push/fcm/FCMInstanceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "FCMInstanceIDService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/u;->d()Z

    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    const-string v1, "3"

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/push/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method
