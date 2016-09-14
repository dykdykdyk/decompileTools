.class public final Lcom/nut/blehunter/q;
.super Ljava/lang/Object;
.source "LogBuilder.java"


# static fields
.field public static a:Lcom/nut/blehunter/q;


# instance fields
.field public b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/q;->b:Ljava/lang/StringBuilder;

    .line 20
    return-void
.end method
