.class final Landroid/support/v7/widget/co;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cm;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/cm;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/cm;B)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Landroid/support/v7/widget/co;-><init>(Landroid/support/v7/widget/cm;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cm;

    invoke-static {v0}, Landroid/support/v7/widget/cm;->b(Landroid/support/v7/widget/cm;)V

    .line 306
    return-void
.end method
