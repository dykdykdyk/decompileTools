.class final Lcom/umeng/message/proguard/f;
.super Ljava/lang/Object;
.source "NewMessagePush.java"

# interfaces
.implements Lorg/android/agoo/d/b/o;


# instance fields
.field final synthetic a:Lcom/umeng/message/proguard/d;


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/d;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/umeng/message/proguard/f;->a:Lcom/umeng/message/proguard/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 981
    iget-object v0, p0, Lcom/umeng/message/proguard/f;->a:Lcom/umeng/message/proguard/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/d;->c(Lcom/umeng/message/proguard/d;J)J

    .line 982
    iget-object v0, p0, Lcom/umeng/message/proguard/f;->a:Lcom/umeng/message/proguard/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/d;->a(Lcom/umeng/message/proguard/d;J)J

    .line 983
    invoke-static {}, Lcom/umeng/message/proguard/d;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send Data--->path["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void
.end method
