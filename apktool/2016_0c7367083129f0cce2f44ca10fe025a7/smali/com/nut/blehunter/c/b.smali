.class public final Lcom/nut/blehunter/c/b;
.super Ljava/lang/Object;
.source "SendAuthFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/nut/blehunter/c/g;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 18
    packed-switch p1, :pswitch_data_0

    .line 28
    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    new-instance v0, Lcom/nut/blehunter/c/c;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/c/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
