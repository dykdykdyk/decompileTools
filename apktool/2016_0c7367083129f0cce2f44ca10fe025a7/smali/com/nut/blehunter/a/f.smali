.class public final Lcom/nut/blehunter/a/f;
.super Ljava/lang/Object;
.source "UbRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/a/c;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/a/c;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nut/blehunter/a/c;B)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/nut/blehunter/a/f;-><init>(Lcom/nut/blehunter/a/c;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 123
    iget-object v0, p0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    new-instance v1, Lcom/nut/blehunter/a/g;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/a/g;-><init>(Lcom/nut/blehunter/a/f;)V

    .line 1041
    iput-object v1, v0, Lcom/nut/blehunter/a/c;->a:Landroid/os/Handler;

    .line 159
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 160
    return-void
.end method
