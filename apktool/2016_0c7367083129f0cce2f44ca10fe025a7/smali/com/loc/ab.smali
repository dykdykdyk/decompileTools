.class public Lcom/loc/ab;
.super Ljava/lang/Object;
.source "UpdateLogInfo.java"


# annotations
.annotation runtime Lcom/loc/p;
    a = "e"
.end annotation


# instance fields
.field a:I
    .annotation runtime Lcom/loc/q;
        a = "c1"
        b = 0x2
    .end annotation
.end field

.field b:I
    .annotation runtime Lcom/loc/q;
        a = "c2"
        b = 0x2
    .end annotation
.end field

.field c:I
    .annotation runtime Lcom/loc/q;
        a = "c3"
        b = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/loc/ab;->a:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/loc/ab;->b:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/loc/ab;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
