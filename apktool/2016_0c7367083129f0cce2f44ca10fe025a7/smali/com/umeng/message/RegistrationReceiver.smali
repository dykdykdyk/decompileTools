.class public Lcom/umeng/message/RegistrationReceiver;
.super Lorg/android/agoo/b/a;
.source "RegistrationReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/umeng/message/RegistrationReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/RegistrationReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/android/agoo/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/umeng/message/RegistrationReceiver;->a:Ljava/lang/String;

    const-string v1, "RegistrationReceiver"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getPushIntentServiceClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
