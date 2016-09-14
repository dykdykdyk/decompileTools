.class public Lno/nordicsemi/android/dfu/DfuServiceInitiator;
.super Ljava/lang/Object;
.source "DfuServiceInitiator.java"


# instance fields
.field private final deviceAddress:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileResId:I

.field private fileType:I

.field private fileUri:Landroid/net/Uri;

.field private initFilePath:Ljava/lang/String;

.field private initFileResId:I

.field private initFileUri:Landroid/net/Uri;

.field private keepBond:Z

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    .line 60
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->deviceAddress:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 2

    .prologue
    .line 262
    const-string v0, "application/zip"

    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Init file must be located inside the ZIP"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    .line 266
    iput-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    .line 267
    iput p3, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileResId:I

    .line 268
    return-object p0
.end method

.method private init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileUri:Landroid/net/Uri;

    .line 273
    iput-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->filePath:Ljava/lang/String;

    .line 274
    iput p3, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileResId:I

    .line 275
    iput p4, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    .line 276
    iput-object p5, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    .line 279
    const-string v0, "application/zip"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iput-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    .line 281
    iput-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileResId:I

    .line 284
    :cond_0
    return-object p0
.end method


# virtual methods
.method public setBinOrHex(II)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must specify the file type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v2, v1

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setBinOrHex(ILandroid/net/Uri;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must specify the file type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setBinOrHex(ILandroid/net/Uri;Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must specify the file type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    const/4 v3, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setBinOrHex(ILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must specify the file type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->deviceName:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setInitFile(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, v0, v0, p1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setInitFile(Landroid/net/Uri;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setInitFile(Landroid/net/Uri;Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setInitFile(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setKeepBond(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->keepBond:Z

    .line 82
    return-object p0
.end method

.method public setZip(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 115
    const/4 v4, 0x0

    const-string v5, "application/zip"

    move-object v0, p0

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setZip(Landroid/net/Uri;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 93
    const/4 v2, 0x0

    const-string v5, "application/zip"

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setZip(Landroid/net/Uri;Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 125
    const-string v5, "application/zip"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public setZip(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v1, 0x0

    const-string v5, "application/zip"

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lno/nordicsemi/android/dfu/DfuBaseService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must specify the firmware file before starting the service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    iget-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->keepBond:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 259
    return-void
.end method
