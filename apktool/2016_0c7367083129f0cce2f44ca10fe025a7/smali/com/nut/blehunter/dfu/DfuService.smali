.class public Lcom/nut/blehunter/dfu/DfuService;
.super Lno/nordicsemi/android/dfu/DfuBaseService;
.source "DfuService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNotificationTarget()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    const-class v0, Lcom/nut/blehunter/ui/Main2Activity;

    return-object v0
.end method
