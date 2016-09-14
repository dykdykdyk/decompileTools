.class final Lcom/umeng/message/proguard/c;
.super Ljava/lang/Object;
.source "MessageTime.java"


# instance fields
.field a:Z

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/c;->a:Z

    .line 12
    iput-boolean p1, p0, Lcom/umeng/message/proguard/c;->a:Z

    .line 13
    iput-object p2, p0, Lcom/umeng/message/proguard/c;->b:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/umeng/message/proguard/c;->a:Z

    if-eqz v0, :cond_0

    .line 18
    const-wide/16 v0, 0x4e20

    .line 20
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0
.end method

.method final b()J
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/umeng/message/proguard/c;->a:Z

    if-eqz v0, :cond_0

    .line 75
    const-wide/16 v0, 0x2710

    .line 77
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x7d0

    goto :goto_0
.end method
