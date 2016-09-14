.class public Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;
.super Ljava/lang/Exception;
.source "DeviceDisconnectedException.java"


# static fields
.field private static final serialVersionUID:J = -0x5fc7dd8cc6605b16L


# instance fields
.field private final mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    iput p2, p0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;->mState:I

    .line 37
    return-void
.end method


# virtual methods
.method public getConnectionState()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;->mState:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (connection state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
