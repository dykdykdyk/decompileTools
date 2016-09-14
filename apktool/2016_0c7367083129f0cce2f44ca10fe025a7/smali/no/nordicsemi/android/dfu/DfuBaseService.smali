.class public abstract Lno/nordicsemi/android/dfu/DfuBaseService;
.super Landroid/app/IntentService;
.source "DfuBaseService.java"


# static fields
.field public static final ACTION_ABORT:I = 0x2

.field public static final ACTION_PAUSE:I = 0x0

.field public static final ACTION_RESUME:I = 0x1

.field public static final BROADCAST_ACTION:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

.field public static final BROADCAST_ERROR:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

.field public static final BROADCAST_LOG:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

.field public static final BROADCAST_PROGRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

.field private static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

.field private static final DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

.field private static final DFU_PACKET_UUID:Ljava/util/UUID;

.field private static final DFU_SERVICE_UUID:Ljava/util/UUID;

.field public static final DFU_STATUS_CRC_ERROR:I = 0x5

.field public static final DFU_STATUS_DATA_SIZE_EXCEEDS_LIMIT:I = 0x4

.field public static final DFU_STATUS_INVALID_STATE:I = 0x2

.field public static final DFU_STATUS_NOT_SUPPORTED:I = 0x3

.field public static final DFU_STATUS_OPERATION_FAILED:I = 0x6

.field public static final DFU_STATUS_SUCCESS:I = 0x1

.field private static final DFU_VERSION:Ljava/util/UUID;

.field public static final ERROR_BLUETOOTH_DISABLED:I = 0x100a

.field public static final ERROR_CHARACTERISTICS_NOT_FOUND:I = 0x1007

.field public static final ERROR_CONNECTION_MASK:I = 0x4000

.field public static final ERROR_CONNECTION_STATE_MASK:I = 0x8000

.field public static final ERROR_DEVICE_DISCONNECTED:I = 0x1000

.field public static final ERROR_FILE_ERROR:I = 0x1002

.field public static final ERROR_FILE_INVALID:I = 0x1003

.field public static final ERROR_FILE_IO_EXCEPTION:I = 0x1004

.field public static final ERROR_FILE_NOT_FOUND:I = 0x1001

.field public static final ERROR_FILE_TYPE_UNSUPPORTED:I = 0x1009

.field public static final ERROR_INIT_PACKET_REQUIRED:I = 0x100b

.field public static final ERROR_INVALID_RESPONSE:I = 0x1008

.field public static final ERROR_MASK:I = 0x1000

.field public static final ERROR_REMOTE_MASK:I = 0x2000

.field public static final ERROR_SERVICE_DISCOVERY_NOT_STARTED:I = 0x1005

.field public static final ERROR_SERVICE_NOT_FOUND:I = 0x1006

.field public static final ERROR_TYPE_COMMUNICATION:I = 0x2

.field public static final ERROR_TYPE_COMMUNICATION_STATE:I = 0x1

.field public static final ERROR_TYPE_DFU_REMOTE:I = 0x3

.field public static final ERROR_TYPE_OTHER:I = 0x0

.field public static final EXTRA_ACTION:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

.field public static final EXTRA_AVG_SPEED_B_PER_MS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

.field public static final EXTRA_DATA:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

.field public static final EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

.field public static final EXTRA_ERROR_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

.field public static final EXTRA_FILE_MIME_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

.field public static final EXTRA_FILE_RES_ID:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID"

.field public static final EXTRA_FILE_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

.field public static final EXTRA_FILE_URI:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

.field public static final EXTRA_INIT_FILE_PATH:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

.field public static final EXTRA_INIT_FILE_RES_ID:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID"

.field public static final EXTRA_INIT_FILE_URI:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

.field public static final EXTRA_KEEP_BOND:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

.field public static final EXTRA_LOG_LEVEL:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

.field public static final EXTRA_LOG_MESSAGE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

.field public static final EXTRA_PARTS_TOTAL:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

.field public static final EXTRA_PART_CURRENT:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PROGRESS"

.field public static final EXTRA_RESTORE_BOND:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_RESTORE_BOND"

.field public static final EXTRA_SPEED_B_PER_MS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

.field private static final GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

.field private static final HEX_ARRAY:[C

.field private static final INDICATIONS:I = 0x2

.field public static final LOG_LEVEL_APPLICATION:I = 0xa

.field public static final LOG_LEVEL_DEBUG:I = 0x0

.field public static final LOG_LEVEL_ERROR:I = 0x14

.field public static final LOG_LEVEL_INFO:I = 0x5

.field public static final LOG_LEVEL_VERBOSE:I = 0x1

.field public static final LOG_LEVEL_WARNING:I = 0xf

.field private static final MAX_PACKET_SIZE:I = 0x14

.field public static final MIME_TYPE_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_TYPE_ZIP:Ljava/lang/String; = "application/zip"

.field private static final NOTIFICATIONS:I = 0x1

.field public static final NOTIFICATION_ID:I = 0x11b

.field private static final OP_CODE_ACTIVATE_AND_RESET:[B

.field private static final OP_CODE_ACTIVATE_AND_RESET_KEY:I = 0x5

.field private static final OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

.field private static final OP_CODE_INIT_DFU_PARAMS_KEY:I = 0x2

.field private static final OP_CODE_INIT_DFU_PARAMS_START:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_KEY:I = 0x11

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ_KEY:I = 0x8

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE_KEY:I = 0x3

.field private static final OP_CODE_RESET:[B

.field private static final OP_CODE_RESET_KEY:I = 0x6

.field private static final OP_CODE_RESPONSE_CODE_KEY:I = 0x10

.field private static final OP_CODE_START_DFU:[B

.field private static final OP_CODE_START_DFU_KEY:I = 0x1

.field private static final OP_CODE_VALIDATE:[B

.field private static final OP_CODE_VALIDATE_KEY:I = 0x4

.field public static final PROGRESS_ABORTED:I = -0x7

.field public static final PROGRESS_COMPLETED:I = -0x6

.field public static final PROGRESS_CONNECTING:I = -0x1

.field public static final PROGRESS_DISCONNECTING:I = -0x5

.field public static final PROGRESS_ENABLING_DFU_MODE:I = -0x3

.field public static final PROGRESS_STARTING:I = -0x2

.field public static final PROGRESS_VALIDATING:I = -0x4

.field private static final SERVICE_CHANGED_UUID:Ljava/util/UUID;

.field private static final STATE_CLOSED:I = -0x5

.field private static final STATE_CONNECTED:I = -0x2

.field private static final STATE_CONNECTED_AND_READY:I = -0x3

.field private static final STATE_CONNECTING:I = -0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final STATE_DISCONNECTING:I = -0x4

.field private static final TAG:Ljava/lang/String; = "DfuBaseService"

.field public static final TYPE_APPLICATION:I = 0x4

.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_BOOTLOADER:I = 0x2

.field public static final TYPE_SOFT_DEVICE:I = 0x1


# instance fields
.field private mAborted:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBuffer:[B

.field private mBytesConfirmed:I

.field private mBytesSent:I

.field private mConnectionState:I

.field private final mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mDfuActionReceiver:Landroid/content/BroadcastReceiver;

.field private mError:I

.field private mFileType:I

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mImageSizeInBytes:I

.field private mImageSizeSent:Z

.field private mInitPacketSent:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mLastBytesSent:I

.field private mLastProgress:I

.field private mLastProgressTime:J

.field private final mLock:Ljava/lang/Object;

.field private mNotificationsEnabled:Z

.field private mPacketsBeforeNotification:I

.field private mPacketsSentSinceNotification:I

.field private mPartCurrent:I

.field private mPartsTotal:I

.field private mPaused:Z

.field private mReceivedData:[B

.field private mRemoteErrorOccurred:Z

.field private mRequestCompleted:Z

.field private mResetRequestSent:Z

.field private mServiceChangedIndicationsEnabled:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide v6, -0x7fffff7fa064cb05L    # -2.724079460785E-312

    const/4 v1, 0x2

    const-wide v4, 0x1523785feabcd123L    # 7.580602127171364E-207

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 513
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    .line 514
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_START:[B

    .line 515
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

    .line 516
    new-array v0, v3, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

    .line 517
    new-array v0, v3, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_VALIDATE:[B

    .line 518
    new-array v0, v3, [B

    const/4 v1, 0x5

    aput-byte v1, v0, v2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_ACTIVATE_AND_RESET:[B

    .line 519
    new-array v0, v3, [B

    const/4 v1, 0x6

    aput-byte v1, v0, v2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    .line 521
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    .line 524
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x180100001000L

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

    .line 525
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x2a0500001000L

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    .line 526
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15301212efdeL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;

    .line 527
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15311212efdeL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    .line 528
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15321212efdeL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;

    .line 529
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15341212efdeL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_VERSION:Ljava/util/UUID;

    .line 530
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x290200001000L

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    .line 535
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->HEX_ARRAY:[C

    return-void

    .line 513
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    .line 514
    nop

    :array_1
    .array-data 1
        0x2t
        0x0t
    .end array-data

    .line 515
    nop

    :array_2
    .array-data 1
        0x2t
        0x1t
    .end array-data

    .line 521
    nop

    :array_3
    .array-data 1
        0x8t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1032
    const-string v0, "DfuBaseService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 537
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBuffer:[B

    .line 541
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    .line 571
    const/16 v0, 0xa

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 647
    new-instance v0, Lno/nordicsemi/android/dfu/DfuBaseService$1;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/dfu/DfuBaseService$1;-><init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 667
    new-instance v0, Lno/nordicsemi/android/dfu/DfuBaseService$2;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/dfu/DfuBaseService$2;-><init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    .line 697
    new-instance v0, Lno/nordicsemi/android/dfu/DfuBaseService$3;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/dfu/DfuBaseService$3;-><init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 719
    new-instance v0, Lno/nordicsemi/android/dfu/DfuBaseService$4;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/dfu/DfuBaseService$4;-><init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 1029
    const/4 v0, -0x1

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgress:I

    .line 1033
    return-void
.end method

.method static synthetic access$000(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1202(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    return p1
.end method

.method static synthetic access$1302(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mNotificationsEnabled:Z

    return p1
.end method

.method static synthetic access$1400()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1500(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    return v0
.end method

.method static synthetic access$1502(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    return p1
.end method

.method static synthetic access$1600(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    return v0
.end method

.method static synthetic access$1602(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    return p1
.end method

.method static synthetic access$1700(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    return v0
.end method

.method static synthetic access$1712(Lno/nordicsemi/android/dfu/DfuBaseService;I)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    add-int/2addr v0, p1

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    return v0
.end method

.method static synthetic access$1800(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I

    return v0
.end method

.method static synthetic access$1802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I

    return p1
.end method

.method static synthetic access$1808(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I

    return v0
.end method

.method static synthetic access$1900(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I

    return v0
.end method

.method static synthetic access$2000(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    return v0
.end method

.method static synthetic access$202(Lno/nordicsemi/android/dfu/DfuBaseService;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    return p1
.end method

.method static synthetic access$2100(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitIfPaused()V

    return-void
.end method

.method static synthetic access$2200(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    return v0
.end method

.method static synthetic access$2202(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    return p1
.end method

.method static synthetic access$2300(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z

    return v0
.end method

.method static synthetic access$2400(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lno/nordicsemi/android/dfu/DfuBaseService;)[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBuffer:[B

    return-object v0
.end method

.method static synthetic access$2600(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$2700(Lno/nordicsemi/android/dfu/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lno/nordicsemi/android/dfu/DfuBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    return-void
.end method

.method static synthetic access$2800(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification()V

    return-void
.end method

.method static synthetic access$2900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3002(Lno/nordicsemi/android/dfu/DfuBaseService;[B)[B
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    return-object p1
.end method

.method static synthetic access$3100()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$3202(Lno/nordicsemi/android/dfu/DfuBaseService;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesConfirmed:I

    return p1
.end method

.method static synthetic access$3300()[C
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->HEX_ARRAY:[C

    return-object v0
.end method

.method static synthetic access$402(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    return p1
.end method

.method static synthetic access$500(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    return v0
.end method

.method static synthetic access$502(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    return p1
.end method

.method static synthetic access$602(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    return p1
.end method

.method static synthetic access$700(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    return v0
.end method

.method static synthetic access$802(Lno/nordicsemi/android/dfu/DfuBaseService;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    return p1
.end method

.method static synthetic access$900(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private close(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .prologue
    .line 2070
    const-string v0, "Cleaning up..."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2071
    const/4 v0, 0x0

    const-string v1, "gatt.close()"

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2072
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 2073
    const/4 v0, -0x5

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 2074
    return-void
.end method

.method private connect(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1986
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1987
    const/4 v0, 0x0

    .line 2005
    :goto_0
    return-object v0

    .line 1989
    :cond_0
    iput v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 1991
    const-string v0, "Connecting to the device..."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1993
    const/4 v1, 0x0

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 1998
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    :goto_1
    :try_start_1
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    const/4 v3, -0x2

    if-ne v1, v3, :cond_2

    :cond_1
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v1, :cond_4

    .line 2000
    :cond_3
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 2001
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2002
    :catch_0
    move-exception v1

    .line 2003
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2001
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 2549
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 2572
    :goto_0
    return v0

    .line 2553
    :cond_0
    iput-boolean v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 2555
    const-string v1, "Starting pairing..."

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 2557
    const-string v0, "gatt.getDevice().createBond()"

    invoke-direct {p0, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2558
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    .line 2565
    :goto_1
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2566
    :goto_2
    :try_start_1
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez v1, :cond_2

    .line 2567
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 2568
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2569
    :catch_0
    move-exception v1

    .line 2570
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2560
    :cond_1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->createBondApi18(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_1

    .line 2568
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createBondApi18(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2580
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "createBond"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2581
    if-eqz v0, :cond_0

    .line 2582
    const/4 v2, 0x0

    const-string v3, "gatt.getDevice().createBond() (hidden)"

    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2583
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2588
    :goto_0
    return v0

    .line 2585
    :catch_0
    move-exception v0

    .line 2586
    const-string v2, "DfuBaseService"

    const-string v3, "An exception occurred while creating bond"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    .line 2588
    goto :goto_0
.end method

.method private disconnect(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    .prologue
    .line 2038
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-nez v0, :cond_0

    .line 2048
    :goto_0
    return-void

    .line 2041
    :cond_0
    const/4 v0, -0x4

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 2043
    const-string v0, "Disconnecting from the device..."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2047
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitUntilDisconnected()V

    goto :goto_0
.end method

.method private enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x3

    const/4 v4, 0x1

    .line 2178
    if-ne p3, v4, :cond_0

    const-string v0, "notifications"

    .line 2179
    :goto_0
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v1, v5, :cond_1

    .line 2180
    new-instance v1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v1, v0, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2178
    :cond_0
    const-string v0, "indications"

    goto :goto_0

    .line 2182
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 2183
    iput v6, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2184
    if-ne p3, v4, :cond_2

    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mNotificationsEnabled:Z

    if-nez v1, :cond_3

    :cond_2
    if-ne p3, v7, :cond_4

    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    if-eqz v1, :cond_4

    .line 2215
    :cond_3
    return-void

    .line 2187
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enabling "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enabling "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2191
    invoke-virtual {p1, p2, v4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 2194
    sget-object v1, Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 2195
    if-ne p3, v4, :cond_9

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_1
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 2196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "gatt.writeDescriptor("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p3, v4, :cond_a

    const-string v1, ", value=0x01-00)"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2197
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 2201
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2203
    :goto_3
    if-ne p3, v4, :cond_5

    :try_start_1
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mNotificationsEnabled:Z

    if-eqz v1, :cond_6

    :cond_5
    if-ne p3, v7, :cond_7

    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    if-nez v1, :cond_7

    :cond_6
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v1, v5, :cond_7

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_8

    :cond_7
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v1, :cond_b

    .line 2204
    :cond_8
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 2205
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2206
    :catch_0
    move-exception v1

    .line 2207
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2209
    :goto_4
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_c

    .line 2210
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0

    .line 2195
    :cond_9
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_1

    .line 2196
    :cond_a
    const-string v1, ", value=0x02-00)"

    goto :goto_2

    .line 2205
    :cond_b
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2211
    :cond_c
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v1, :cond_d

    .line 2212
    new-instance v1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v1, v0, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2213
    :cond_d
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v1, v5, :cond_3

    .line 2214
    new-instance v1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v1, v0, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private getStatusCode([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 2116
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    if-ne v0, p2, :cond_0

    aget-byte v0, p1, v2

    if-lez v0, :cond_0

    aget-byte v0, p1, v2

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 2117
    :cond_0
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;

    const-string v1, "Invalid response received"

    invoke-direct {v0, v1, p1, p2}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;-><init>(Ljava/lang/String;[BI)V

    throw v0

    .line 2118
    :cond_1
    aget-byte v0, p1, v2

    return v0
.end method

.method private initialize()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2831
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 2832
    if-nez v0, :cond_0

    .line 2833
    const-string v0, "Unable to initialize BluetoothManager."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    move v0, v1

    .line 2843
    :goto_0
    return v0

    .line 2837
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2838
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 2839
    const-string v0, "Unable to obtain a BluetoothAdapter."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    move v0, v1

    .line 2840
    goto :goto_0

    .line 2843
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isServiceChangedCCCDEnabled(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x3

    const/4 v0, 0x0

    .line 2228
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v1, v3, :cond_0

    .line 2229
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to read Service Changed CCCD"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2231
    :cond_0
    if-nez p2, :cond_2

    .line 2262
    :cond_1
    :goto_0
    return v0

    .line 2234
    :cond_2
    sget-object v1, Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 2235
    if-eqz v1, :cond_1

    .line 2238
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 2239
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2241
    const-string v0, "Reading Service Changed CCCD value..."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2242
    const/4 v0, 0x1

    const-string v2, "Reading Service Changed CCCD value..."

    invoke-direct {p0, v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2244
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 2248
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2249
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-nez v0, :cond_3

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v0, :cond_5

    .line 2250
    :cond_4
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 2251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2252
    :catch_0
    move-exception v0

    .line 2253
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2255
    :goto_2
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_6

    .line 2256
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0

    .line 2251
    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2257
    :cond_6
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v0, :cond_7

    .line 2258
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "Unable to read Service Changed CCCD"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2259
    :cond_7
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v0, v3, :cond_8

    .line 2260
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to read Service Changed CCCD"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2262
    :cond_8
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2869
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2849
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2854
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2864
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2859
    return-void
.end method

.method private static makeDfuActionIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 1036
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1037
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1038
    return-object v0
.end method

.method private openInputStream(ILjava/lang/String;II)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1967
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1968
    const-string v0, "application/zip"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    new-instance v0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    invoke-direct {v0, v1, p3, p4}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 1975
    :goto_0
    return-object v0

    .line 1970
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 1971
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1972
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 1973
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_1

    .line 1974
    new-instance v0, Lno/nordicsemi/android/dfu/internal/HexInputStream;

    invoke-direct {v0, v1, p3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1975
    goto :goto_0
.end method

.method private openInputStream(Landroid/net/Uri;Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1938
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 1939
    const-string v0, "application/zip"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1940
    new-instance v0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    invoke-direct {v0, v6, p3, p4}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 1954
    :goto_0
    return-object v0

    .line 1942
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, v2, v1

    .line 1943
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1945
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1946
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1948
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1949
    new-instance v0, Lno/nordicsemi/android/dfu/internal/HexInputStream;

    invoke-direct {v0, v6, p3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 1954
    goto :goto_0

    .line 1952
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private openInputStream(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1920
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1921
    const-string v0, "application/zip"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1922
    new-instance v0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    invoke-direct {v0, v1, p3, p4}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 1925
    :goto_0
    return-object v0

    .line 1923
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1924
    new-instance v0, Lno/nordicsemi/android/dfu/internal/HexInputStream;

    invoke-direct {v0, v1, p3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1925
    goto :goto_0
.end method

.method private parse([B)Ljava/lang/String;
    .locals 7

    .prologue
    .line 2872
    if-nez p1, :cond_0

    .line 2873
    const-string v0, ""

    .line 2887
    :goto_0
    return-object v0

    .line 2875
    :cond_0
    array-length v1, p1

    .line 2876
    if-nez v1, :cond_1

    .line 2877
    const-string v0, ""

    goto :goto_0

    .line 2879
    :cond_1
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, -0x1

    new-array v2, v0, [C

    .line 2880
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 2881
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    .line 2882
    mul-int/lit8 v4, v0, 0x3

    sget-object v5, Lno/nordicsemi/android/dfu/DfuBaseService;->HEX_ARRAY:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    .line 2883
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lno/nordicsemi/android/dfu/DfuBaseService;->HEX_ARRAY:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    .line 2884
    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_2

    .line 2885
    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    const/16 v4, 0x2d

    aput-char v4, v2, v3

    .line 2880
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2887
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private readNotificationResponse()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x3

    .line 2641
    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2643
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2644
    :goto_0
    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    if-nez v0, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v0, :cond_2

    .line 2645
    :cond_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2646
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2647
    :catch_0
    move-exception v0

    .line 2648
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2650
    :goto_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_3

    .line 2651
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0

    .line 2646
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2652
    :cond_3
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v0, :cond_4

    .line 2653
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "Unable to write Op Code"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2654
    :cond_4
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v0, v2, :cond_5

    .line 2655
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to write Op Code"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2656
    :cond_5
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    return-object v0
.end method

.method private readVersion(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x3

    .line 2132
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v1, v3, :cond_0

    .line 2133
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to read version number"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2135
    :cond_0
    if-nez p2, :cond_1

    .line 2163
    :goto_0
    return v0

    .line 2138
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 2139
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2141
    const-string v1, "Reading DFU version number..."

    invoke-direct {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2142
    const/4 v1, 0x1

    const-string v2, "Reading DFU version number..."

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2144
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2148
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2149
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-nez v1, :cond_2

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v1, :cond_4

    .line 2150
    :cond_3
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 2151
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2152
    :catch_0
    move-exception v1

    .line 2153
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2155
    :goto_2
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_5

    .line 2156
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0

    .line 2151
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2157
    :cond_5
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v1, :cond_6

    .line 2158
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "Unable to read version number"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2159
    :cond_6
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v1, v3, :cond_7

    .line 2160
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to read version number"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2163
    :cond_7
    const/16 v1, 0x12

    invoke-virtual {p2, v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2089
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2090
    :cond_0
    const-string v0, "gatt.refresh()"

    invoke-direct {p0, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2095
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2096
    if-eqz v0, :cond_1

    .line 2097
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Refreshing result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2105
    :cond_1
    :goto_0
    return-void

    .line 2100
    :catch_0
    move-exception v0

    .line 2101
    const-string v1, "An exception occurred while refreshing device"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2102
    const/16 v0, 0xf

    const-string v1, "Refreshing failed"

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2598
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 2627
    :goto_0
    return v1

    .line 2601
    :cond_0
    const-string v0, "Removing bond information..."

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2607
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "removeBond"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2608
    if-eqz v0, :cond_1

    .line 2609
    const/4 v3, 0x0

    iput-boolean v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 2610
    const/4 v3, 0x0

    const-string v4, "gatt.getDevice().removeBond() (hidden)"

    invoke-direct {p0, v3, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2611
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2615
    :try_start_1
    iget-object v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2616
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez v0, :cond_2

    .line 2617
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 2618
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2619
    :catch_0
    move-exception v0

    .line 2620
    :try_start_4
    const-string v3, "Sleeping interrupted"

    invoke-direct {p0, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    move v0, v1

    :goto_3
    move v1, v0

    .line 2627
    goto :goto_0

    .line 2618
    :cond_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 2624
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 2625
    :goto_4
    const-string v2, "DfuBaseService"

    const-string v3, "An exception occurred while removing bond information"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2624
    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_4
.end method

.method private sendErrorBroadcast(I)V
    .locals 3

    .prologue
    .line 2796
    new-instance v0, Landroid/content/Intent;

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2797
    and-int/lit16 v1, p1, 0x4000

    if-lez v1, :cond_0

    .line 2798
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    and-int/lit16 v2, p1, -0x4001

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2799
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2810
    :goto_0
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2811
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2812
    return-void

    .line 2800
    :cond_0
    const v1, 0x8000

    and-int/2addr v1, p1

    if-lez v1, :cond_1

    .line 2801
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    const v2, -0x8001

    and-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2802
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 2803
    :cond_1
    and-int/lit16 v1, p1, 0x2000

    if-lez v1, :cond_2

    .line 2804
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2805
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 2807
    :cond_2
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2808
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendLogBroadcast(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 2815
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DFU] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2816
    new-instance v1, Landroid/content/Intent;

    const-string v2, "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2817
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2818
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2819
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2820
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2821
    return-void
.end method

.method private sendProgressBroadcast(I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 2779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2780
    iget-wide v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgressTime:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    iget v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastBytesSent:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-wide v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgressTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    div-float/2addr v0, v4

    .line 2781
    :goto_0
    iget-wide v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mStartTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    int-to-float v1, v1

    iget-wide v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    div-float/2addr v1, v4

    .line 2782
    :cond_0
    iput-wide v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgressTime:J

    .line 2783
    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    iput v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastBytesSent:I

    .line 2785
    new-instance v2, Landroid/content/Intent;

    const-string v3, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2786
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2787
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2788
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    iget v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2789
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    iget v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2790
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2791
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2792
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2793
    return-void

    :cond_1
    move v0, v1

    .line 2780
    goto :goto_0
.end method

.method private setNumberOfPackets([BI)V
    .locals 2

    .prologue
    .line 1906
    const/4 v0, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1907
    const/4 v0, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1908
    return-void
.end method

.method private terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .prologue
    .line 2015
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eqz v0, :cond_0

    .line 2016
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 2021
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->disconnect(Landroid/bluetooth/BluetoothGatt;)V

    .line 2022
    const/4 v0, 0x5

    const-string v1, "Disconnected"

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2026
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 2027
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 2028
    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 2029
    return-void
.end method

.method private updateProgressNotification()V
    .locals 2

    .prologue
    .line 2663
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 2664
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgress:I

    if-ne v1, v0, :cond_0

    .line 2669
    :goto_0
    return-void

    .line 2667
    :cond_0
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgress:I

    .line 2668
    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    goto :goto_0
.end method

.method private updateProgressNotification(I)V
    .locals 9

    .prologue
    const/16 v8, 0x1000

    const v3, 0x1080089

    const/16 v7, 0x64

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2679
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceName:Ljava/lang/String;

    .line 2683
    :goto_0
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080088

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 2685
    const v1, -0x777778

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2687
    packed-switch p1, :pswitch_data_0

    .line 2714
    if-lt p1, v8, :cond_1

    .line 2716
    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_status_error:I

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_status_error_msg:I

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2726
    :goto_1
    if-ge p1, v8, :cond_4

    .line 2727
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendProgressBroadcast(I)V

    .line 2750
    :goto_2
    return-void

    .line 2679
    :cond_0
    sget v0, Lno/nordicsemi/android/dfu/R$string;->dfu_unknown_name:I

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2689
    :pswitch_0
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_connecting:I

    invoke-virtual {p0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_connecting_msg:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 2692
    :pswitch_1
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_starting:I

    invoke-virtual {p0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_starting_msg:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 2695
    :pswitch_2
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_switching_to_dfu:I

    invoke-virtual {p0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_switching_to_dfu_msg:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 2699
    :pswitch_3
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_validating:I

    invoke-virtual {p0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_validating_msg:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2702
    :pswitch_4
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_disconnecting:I

    invoke-virtual {p0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_status_disconnecting_msg:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2706
    :pswitch_5
    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_status_completed:I

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_status_completed_msg:I

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, -0xff47e6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2710
    :pswitch_6
    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_status_aborted:I

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_status_aborted_msg:I

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2720
    :cond_1
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    if-ne v1, v5, :cond_2

    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_status_uploading:I

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2721
    :goto_3
    iget v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mFileType:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_3

    sget v3, Lno/nordicsemi/android/dfu/R$string;->dfu_status_uploading_msg:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2722
    :goto_4
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, p1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2720
    :cond_2
    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_status_uploading_part:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 2721
    :cond_3
    sget v3, Lno/nordicsemi/android/dfu/R$string;->dfu_status_uploading_components_msg:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2729
    :cond_4
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendErrorBroadcast(I)V

    goto/16 :goto_2

    .line 2687
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uploadFirmwareImage(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x3

    .line 2480
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 2481
    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2483
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBuffer:[B

    .line 2485
    :try_start_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 2486
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending firmware to characteristic "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2487
    invoke-direct {p0, p1, p2, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    :try_end_0
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2495
    :try_start_1
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2496
    :goto_0
    :try_start_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    if-nez v0, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v0, v5, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v0, :cond_2

    .line 2497
    :cond_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2499
    :catch_0
    move-exception v0

    .line 2500
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2502
    :goto_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_3

    .line 2503
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0

    .line 2489
    :catch_1
    move-exception v0

    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "HEX file not valid"

    const/16 v2, 0x1003

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2491
    :catch_2
    move-exception v0

    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "Error while reading file"

    const/16 v2, 0x1004

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2498
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2504
    :cond_3
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v0, :cond_4

    .line 2505
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "Uploading Firmware Image failed"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2506
    :cond_4
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v0, v5, :cond_5

    .line 2507
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Uploading Firmware Image failed: device disconnected"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2509
    :cond_5
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    return-object v0
.end method

.method private waitIfPaused()V
    .locals 3

    .prologue
    .line 2537
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2539
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2541
    :catch_0
    move-exception v0

    .line 2542
    :try_start_1
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2544
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private waitUntilDisconnected()V
    .locals 2

    .prologue
    .line 2055
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    :goto_0
    :try_start_1
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v0, :cond_0

    .line 2057
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2058
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2059
    :catch_0
    move-exception v0

    .line 2060
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2062
    :goto_1
    return-void

    .line 2058
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 2341
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 2342
    iput v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2343
    iput-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    .line 2345
    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 2346
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2347
    const/16 v0, 0x14

    invoke-virtual {p2, p3, v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing to characteristic "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gatt.writeCharacteristic("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2350
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2354
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    if-nez v0, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v0, :cond_2

    .line 2356
    :cond_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2358
    :catch_0
    move-exception v0

    .line 2359
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2361
    :goto_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_3

    .line 2362
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0

    .line 2357
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2363
    :cond_3
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v0, :cond_4

    .line 2364
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "Unable to write Image Size"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2365
    :cond_4
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v0, v3, :cond_5

    .line 2366
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to write Image Size"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2367
    :cond_5
    return-void
.end method

.method private writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x3

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 2390
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 2391
    iput v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2392
    iput-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    .line 2394
    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 2395
    const/16 v0, 0xc

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2396
    invoke-virtual {p2, p3, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2397
    const/4 v0, 0x4

    invoke-virtual {p2, p4, v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2398
    const/16 v0, 0x8

    invoke-virtual {p2, p5, v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing to characteristic "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gatt.writeCharacteristic("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2401
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2405
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2406
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    if-nez v0, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v0, :cond_2

    .line 2407
    :cond_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2409
    :catch_0
    move-exception v0

    .line 2410
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2412
    :goto_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_3

    .line 2413
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0

    .line 2408
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2414
    :cond_3
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v0, :cond_4

    .line 2415
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "Unable to write Image Sizes"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2416
    :cond_4
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v0, v3, :cond_5

    .line 2417
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to write Image Sizes"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2418
    :cond_5
    return-void
.end method

.method private writeInitPacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 2434
    .line 2435
    array-length v0, p3

    if-eq v0, p4, :cond_0

    .line 2436
    new-array v0, p4, [B

    .line 2437
    invoke-static {p3, v2, v0, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    .line 2439
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 2440
    iput v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2441
    iput-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    .line 2443
    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 2444
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending init packet (Value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->parse([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing to characteristic "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gatt.writeCharacteristic("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2448
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2452
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v0, :cond_3

    .line 2454
    :cond_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2456
    :catch_0
    move-exception v0

    .line 2457
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2459
    :goto_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_4

    .line 2460
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0

    .line 2455
    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2461
    :cond_4
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v0, :cond_5

    .line 2462
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "Unable to write Init DFU Parameters"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2463
    :cond_5
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v0, v3, :cond_6

    .line 2464
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to write Init DFU Parameters"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2465
    :cond_6
    return-void
.end method

.method private writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2278
    aget-byte v1, p3, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    aget-byte v1, p3, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2279
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    .line 2280
    return-void
.end method

.method private writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x3

    const/4 v3, 0x0

    .line 2297
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 2298
    iput v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2299
    iput-boolean v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 2304
    iput-boolean p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z

    .line 2306
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2307
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing to characteristic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gatt.writeCharacteristic("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2309
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2313
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2314
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-eqz v0, :cond_2

    .line 2315
    :cond_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2317
    :catch_0
    move-exception v0

    .line 2318
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2320
    :goto_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v0, :cond_3

    .line 2321
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0

    .line 2316
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2322
    :cond_3
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z

    if-nez v0, :cond_4

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v0, :cond_4

    .line 2323
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to write Op Code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2324
    :cond_4
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z

    if-nez v0, :cond_5

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v0, v4, :cond_5

    .line 2325
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to write Op Code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2326
    :cond_5
    return-void
.end method

.method private writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2521
    .line 2522
    array-length v0, p3

    if-eq v0, p4, :cond_0

    .line 2523
    new-array v0, p4, [B

    .line 2524
    invoke-static {p3, v1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    .line 2526
    :cond_0
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2527
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2534
    return-void
.end method


# virtual methods
.method public abstract getNotificationTarget()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 1043
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 1045
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->initialize()Z

    .line 1047
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 1048
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->makeDfuActionIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 1049
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1050
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1052
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1053
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1055
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1056
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1057
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1061
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 1063
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 1064
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1066
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1067
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1068
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1069
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17

    .prologue
    .line 1073
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1076
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1077
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1078
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1079
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1080
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1081
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1082
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1083
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1084
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1085
    if-eqz v9, :cond_0

    if-nez v4, :cond_0

    .line 1086
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 1087
    :cond_0
    :goto_0
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1088
    if-eqz v5, :cond_4

    .line 1089
    :goto_1
    const-string v8, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    .line 1090
    const-string v8, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    .line 1093
    and-int/lit8 v8, v4, -0x8

    if-gtz v8, :cond_1

    const-string v8, "application/zip"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "application/octet-stream"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1094
    :cond_1
    const-string v2, "File type or file mime-type not supported"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1095
    const/16 v2, 0xf

    const-string v3, "File type or file mime-type not supported"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1096
    const/16 v2, 0x1009

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendErrorBroadcast(I)V

    .line 1896
    :cond_2
    :goto_2
    return-void

    .line 1086
    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    .line 1088
    :cond_4
    if-nez v4, :cond_5

    const-string v5, "application/zip"

    goto :goto_1

    :cond_5
    const-string v5, "application/octet-stream"

    goto :goto_1

    .line 1099
    :cond_6
    const-string v8, "application/octet-stream"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    if-eq v4, v8, :cond_7

    const/4 v8, 0x2

    if-eq v4, v8, :cond_7

    const/4 v8, 0x4

    if-eq v4, v8, :cond_7

    .line 1100
    const-string v2, "Unable to determine file type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1101
    const/16 v2, 0xf

    const-string v3, "Unable to determine file type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1102
    const/16 v2, 0x1009

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendErrorBroadcast(I)V

    goto :goto_2

    .line 1106
    :cond_7
    move-object/from16 v0, p0

    iput-object v11, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    .line 1107
    move-object/from16 v0, p0

    iput-object v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceName:Ljava/lang/String;

    .line 1108
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 1109
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    .line 1110
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesConfirmed:I

    .line 1111
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I

    .line 1112
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 1113
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgressTime:J

    .line 1114
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    .line 1115
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    .line 1116
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mNotificationsEnabled:Z

    .line 1117
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z

    .line 1118
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 1119
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    .line 1120
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    .line 1123
    const-string v6, "settings_packet_receipt_notification_enabled"

    const/4 v8, 0x1

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1124
    const-string v6, "settings_number_of_packets"

    const-string v14, "10"

    invoke-interface {v7, v6, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1127
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 1128
    if-ltz v6, :cond_8

    const v14, 0xffff

    if-le v6, v14, :cond_9

    .line 1129
    :cond_8
    const/16 v6, 0xa

    .line 1133
    :cond_9
    :goto_3
    if-nez v8, :cond_a

    .line 1134
    const/4 v6, 0x0

    .line 1135
    :cond_a
    move-object/from16 v0, p0

    iput v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I

    .line 1138
    const-string v6, "settings_mbr_size"

    const-string v8, "4096"

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1141
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    .line 1142
    if-gez v6, :cond_b

    .line 1143
    const/4 v6, 0x0

    .line 1148
    :cond_b
    :goto_4
    const/4 v7, 0x1

    const-string v8, "Starting DFU service"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1153
    const/4 v8, 0x0

    .line 1154
    const/4 v7, 0x0

    .line 1159
    const/4 v14, 0x1

    :try_start_2
    const-string v15, "Opening file..."

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1160
    if-eqz v2, :cond_d

    .line 1161
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->openInputStream(Landroid/net/Uri;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v8

    .line 1168
    :cond_c
    :goto_5
    if-eqz v3, :cond_f

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1179
    :goto_6
    move-object/from16 v0, p0

    iput-object v8, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1180
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    .line 1182
    if-nez v4, :cond_3d

    const-string v2, "application/zip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1183
    move-object v0, v8

    check-cast v0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    move-object v2, v0

    .line 1184
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getContentType()I

    move-result v4

    move v9, v4

    .line 1186
    :goto_7
    move-object/from16 v0, p0

    iput v9, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mFileType:I

    .line 1188
    const-string v2, "application/zip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1189
    move-object v0, v8

    check-cast v0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    move-object v2, v0

    .line 1190
    const/4 v4, 0x4

    if-ne v9, v4, :cond_11

    .line 1191
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getApplicationInit()[B

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 1192
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getApplicationInit()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v12, v3

    .line 1198
    :goto_8
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Image file opened ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes in total)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1221
    const/4 v2, 0x1

    :try_start_3
    const-string v3, "Connecting to DFU target..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1222
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 1224
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lno/nordicsemi/android/dfu/DfuBaseService;->connect(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    .line 1226
    if-nez v3, :cond_12

    .line 1227
    const-string v2, "Bluetooth adapter disabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1228
    const/16 v2, 0x14

    const-string v3, "Bluetooth adapter disabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1229
    const/16 v2, 0x100a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1895
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 1131
    :catch_1
    move-exception v6

    const/16 v6, 0xa

    goto/16 :goto_3

    .line 1145
    :catch_2
    move-exception v6

    const/16 v6, 0x1000

    goto/16 :goto_4

    .line 1162
    :cond_d
    if-eqz v9, :cond_e

    .line 1163
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5, v6, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->openInputStream(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v8

    goto/16 :goto_5

    .line 1164
    :cond_e
    if-lez v10, :cond_c

    .line 1165
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v6, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->openInputStream(ILjava/lang/String;II)Ljava/io/InputStream;

    move-result-object v8

    goto/16 :goto_5

    .line 1171
    :cond_f
    if-eqz v12, :cond_10

    .line 1173
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 1199
    :catch_3
    move-exception v2

    .line 1200
    :try_start_6
    const-string v3, "A security exception occurred while opening file"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1201
    const/16 v2, 0x1001

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_2

    .line 1895
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .line 1174
    :cond_10
    if-lez v13, :cond_3e

    .line 1176
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto/16 :goto_6

    .line 1194
    :cond_11
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getSystemInit()[B

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 1195
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getSystemInit()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v12, v3

    goto/16 :goto_8

    .line 1203
    :catch_5
    move-exception v2

    .line 1204
    :try_start_9
    const-string v3, "An exception occurred while opening file"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1205
    const/16 v2, 0x1001

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    .line 1895
    :catch_6
    move-exception v2

    goto/16 :goto_2

    .line 1207
    :catch_7
    move-exception v2

    .line 1208
    :try_start_b
    const-string v3, "An exception occurred while calculating file size"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1209
    const/16 v2, 0x1002

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_2

    .line 1895
    :catch_8
    move-exception v2

    goto/16 :goto_2

    .line 1211
    :catch_9
    move-exception v2

    .line 1212
    :try_start_d
    const-string v3, "An exception occurred while opening files. Did you set the firmware file?"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1213
    const/16 v2, 0x1002

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto/16 :goto_2

    .line 1895
    :catch_a
    move-exception v2

    goto/16 :goto_2

    .line 1232
    :cond_12
    :try_start_f
    move-object/from16 v0, p0

    iget v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-lez v2, :cond_13

    .line 1233
    move-object/from16 v0, p0

    iget v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    const v4, -0x8001

    and-int/2addr v2, v4

    .line 1234
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An error occurred while connecting to the device:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1235
    const/16 v4, 0x14

    const-string v5, "Connection failed (0x%02X): %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Lno/nordicsemi/android/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1236
    move-object/from16 v0, p0

    iget v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto/16 :goto_2

    .line 1895
    :catch_b
    move-exception v2

    goto/16 :goto_2

    .line 1239
    :cond_13
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_14

    .line 1240
    const-string v2, "Upload aborted"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1241
    const/16 v2, 0xf

    const-string v4, "Upload aborted"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1242
    const/4 v2, -0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_12
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_2

    .line 1895
    :catch_c
    move-exception v2

    goto/16 :goto_2

    .line 1247
    :cond_14
    :try_start_13
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 1248
    if-nez v2, :cond_15

    .line 1249
    const-string v2, "DFU service does not exists on the device"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1250
    const/16 v2, 0xf

    const-string v4, "Connected. DFU Service not found"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1251
    const/16 v2, 0x1006

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_14
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    goto/16 :goto_2

    .line 1895
    :catch_d
    move-exception v2

    goto/16 :goto_2

    .line 1254
    :cond_15
    :try_start_15
    sget-object v4, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v13

    .line 1255
    sget-object v4, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 1256
    if-eqz v13, :cond_16

    if-nez v4, :cond_17

    .line 1257
    :cond_16
    const-string v2, "DFU characteristics not found in the DFU service"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1258
    const/16 v2, 0xf

    const-string v4, "Connected. DFU Characteristics not found"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1259
    const/16 v2, 0x1007

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_16
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    goto/16 :goto_2

    .line 1895
    :catch_e
    move-exception v2

    goto/16 :goto_2

    .line 1280
    :cond_17
    :try_start_17
    sget-object v6, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_VERSION:Ljava/util/UUID;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    .line 1282
    const/4 v2, 0x5

    const-string v7, "Connected. Services discovered"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1284
    const/4 v2, -0x2

    :try_start_18
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 1313
    const/4 v2, 0x0

    .line 1314
    if-eqz v6, :cond_18

    .line 1315
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->readVersion(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I

    move-result v2

    .line 1316
    and-int/lit8 v6, v2, 0xf

    .line 1317
    shr-int/lit8 v7, v2, 0x8

    .line 1318
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Version number read: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "."

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1319
    const/16 v11, 0xa

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Version number read: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "."

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    :cond_18
    move v11, v2

    .line 1328
    const/4 v2, 0x1

    if-eq v11, v2, :cond_19

    if-nez v11, :cond_1e

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x3

    if-le v2, v6, :cond_1e

    .line 1330
    :cond_19
    const-string v2, "Application with buttonless update found"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1331
    const/16 v2, 0xf

    const-string v4, "Application with buttonless update found"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1335
    const/4 v2, 0x0

    .line 1336
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1c

    .line 1337
    sget-object v4, Lno/nordicsemi/android/dfu/DfuBaseService;->GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    .line 1338
    if-eqz v4, :cond_1c

    .line 1339
    sget-object v5, Lno/nordicsemi/android/dfu/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 1340
    if-eqz v4, :cond_1c

    .line 1342
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->isServiceChangedCCCDEnabled(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    .line 1344
    if-nez v2, :cond_1a

    .line 1345
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1346
    const/16 v2, 0xa

    const-string v4, "Service Changed indications enabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1371
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1372
    if-eqz v2, :cond_1b

    and-int/lit8 v2, v9, 0x1

    if-nez v2, :cond_1b

    .line 1373
    const/4 v2, 0x1

    const-string v4, "Restarting service..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1375
    const/4 v2, -0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 1376
    const/4 v2, 0x1

    const-string v4, "Disconnecting..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1377
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 1378
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitUntilDisconnected()V

    .line 1379
    const/4 v2, 0x5

    const-string v4, "Disconnected"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1382
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1384
    const-string v2, "Restarting service"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1385
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1386
    const/16 v4, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1387
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_18 .. :try_end_18} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_18 .. :try_end_18} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_18 .. :try_end_18} :catch_19
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_19
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    goto/16 :goto_2

    .line 1895
    :catch_f
    move-exception v2

    goto/16 :goto_2

    .line 1391
    :cond_1a
    const/16 v2, 0xa

    :try_start_1a
    const-string v4, "Service Changed indications enabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1393
    :cond_1b
    const/4 v2, 0x1

    .line 1398
    :cond_1c
    const/4 v4, 0x1

    const-string v5, "Jumping to the DFU Bootloader..."

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1401
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1402
    const/16 v4, 0xa

    const-string v5, "Notifications enabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1405
    const/4 v4, -0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 1406
    sget-object v4, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput-byte v6, v4, v5

    .line 1407
    const-string v4, "Sending Start DFU command (Op Code = 1, Upload Mode = 4)"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1408
    sget-object v4, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v4, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    .line 1409
    const/16 v4, 0xa

    const-string v5, "Jump to bootloader sent (Op Code = 1, Upload Mode = 4)"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1412
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitUntilDisconnected()V

    .line 1413
    const/4 v4, 0x5

    const-string v5, "Disconnected by the remote device"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1428
    if-nez v2, :cond_1d

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 1431
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1433
    const-string v2, "Starting service that will connect to the DFU bootloader"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1434
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1435
    const/16 v4, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1436
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1a
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1a .. :try_end_1a} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_1a .. :try_end_1a} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_1a .. :try_end_1a} :catch_19
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_1b
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    goto/16 :goto_2

    .line 1895
    :catch_10
    move-exception v2

    goto/16 :goto_2

    .line 1428
    :cond_1d
    const/4 v2, 0x0

    goto :goto_9

    .line 1445
    :cond_1e
    const/4 v2, 0x5

    if-lt v11, v2, :cond_1f

    if-nez v12, :cond_1f

    .line 1446
    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Init packet not set for the DFU Bootloader version "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1447
    const/16 v2, 0x14

    const-string v4, "The Init packet is required by this version DFU Bootloader"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1448
    const/16 v2, 0x100b

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_1c
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1c .. :try_end_1c} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_1c .. :try_end_1c} :catch_19
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1890
    const/4 v2, 0x0

    :try_start_1d
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_11

    goto/16 :goto_2

    .line 1895
    :catch_11
    move-exception v2

    goto/16 :goto_2

    .line 1453
    :cond_1f
    const/4 v2, 0x1

    :try_start_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1454
    const/16 v2, 0xa

    const-string v6, "Notifications enabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_1e
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1e .. :try_end_1e} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_1e .. :try_end_1e} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_1e .. :try_end_1e} :catch_19
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 1491
    and-int/lit8 v2, v9, 0x1

    if-lez v2, :cond_20

    move v2, v10

    .line 1492
    :goto_a
    and-int/lit8 v6, v9, 0x2

    if-lez v6, :cond_21

    move v6, v10

    .line 1493
    :goto_b
    and-int/lit8 v7, v9, 0x4

    if-lez v7, :cond_22

    move v7, v10

    .line 1495
    :goto_c
    :try_start_1f
    const-string v14, "application/zip"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1496
    move-object v0, v8

    check-cast v0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    move-object v2, v0

    .line 1497
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceImageSize()I

    move-result v5

    .line 1498
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderImageSize()I

    move-result v6

    .line 1499
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationImageSize()I
    :try_end_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_1f .. :try_end_1f} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_1f .. :try_end_1f} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1f .. :try_end_1f} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_1f .. :try_end_1f} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_1f .. :try_end_1f} :catch_19
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-result v7

    .line 1503
    :goto_d
    :try_start_20
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    const/4 v14, 0x1

    int-to-byte v15, v9

    aput-byte v15, v2, v14

    .line 1506
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "Sending Start DFU command (Op Code = 1, Upload Mode = "

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ")"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1507
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1508
    const/16 v2, 0xa

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DFU Start sent (Op Code = 1, Upload Mode = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1511
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "Sending image size array to DFU Packet ("

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "b, "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "b, "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "b)"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 1512
    invoke-direct/range {v2 .. v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V

    .line 1513
    const/16 v2, 0xa

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Firmware image size sent ("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "b, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "b, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "b)"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1516
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v2

    .line 1528
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v7

    .line 1529
    const/16 v14, 0xa

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Response received (Op Code = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x1

    aget-byte v2, v2, v16

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " Status = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1530
    const/4 v2, 0x1

    if-eq v7, v2, :cond_2b

    .line 1531
    new-instance v2, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v14, "Starting DFU failed"

    invoke-direct {v2, v14, v7}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_20
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_20 .. :try_end_20} :catch_12
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_20 .. :try_end_20} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_20 .. :try_end_20} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_20 .. :try_end_20} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_20 .. :try_end_20} :catch_19
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 1532
    :catch_12
    move-exception v2

    .line 1534
    :try_start_21
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getErrorNumber()I

    move-result v7

    const/4 v14, 0x3

    if-eq v7, v14, :cond_23

    .line 1535
    throw v2
    :try_end_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_21 .. :try_end_21} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_21 .. :try_end_21} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_21 .. :try_end_21} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_21 .. :try_end_21} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_21 .. :try_end_21} :catch_19
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 1580
    :catch_13
    move-exception v2

    move v5, v9

    .line 1581
    :try_start_22
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getErrorNumber()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_27

    .line 1582
    throw v2
    :try_end_22
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_22 .. :try_end_22} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_22 .. :try_end_22} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_22 .. :try_end_22} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_22 .. :try_end_22} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_22 .. :try_end_22} :catch_19
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 1828
    :catch_14
    move-exception v2

    .line 1830
    :try_start_23
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1831
    const/16 v4, 0x14

    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1833
    const-string v2, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1834
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1835
    const/16 v2, 0xa

    const-string v4, "Reset request sent"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1836
    const/16 v2, 0x1008

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_23
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_23 .. :try_end_23} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_23 .. :try_end_23} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_23 .. :try_end_23} :catch_19
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 1890
    :goto_e
    const/4 v2, 0x0

    :try_start_24
    move-object/from16 v0, p0

    iput-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_15

    goto/16 :goto_2

    .line 1896
    :catch_15
    move-exception v2

    goto/16 :goto_2

    .line 1491
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 1492
    :cond_21
    const/4 v6, 0x0

    goto/16 :goto_b

    .line 1493
    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 1539
    :cond_23
    and-int/lit8 v7, v9, 0x4

    if-lez v7, :cond_26

    and-int/lit8 v7, v9, 0x3

    if-lez v7, :cond_26

    .line 1541
    const/4 v2, 0x0

    :try_start_25
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    .line 1543
    const-string v2, "DFU target does not support (SD/BL)+App update"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1544
    const/16 v2, 0xf

    const-string v7, "DFU target does not support (SD/BL)+App update"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1546
    and-int/lit8 v9, v9, -0x5

    .line 1547
    move-object/from16 v0, p0

    iput v9, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mFileType:I

    .line 1548
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    const/4 v7, 0x1

    int-to-byte v14, v9

    aput-byte v14, v2, v7

    .line 1549
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    .line 1552
    move-object v0, v8

    check-cast v0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    move-object v2, v0

    .line 1553
    invoke-virtual {v2, v9}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->setContentType(I)I
    :try_end_25
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_25 .. :try_end_25} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_25 .. :try_end_25} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_25 .. :try_end_25} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_25 .. :try_end_25} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_25 .. :try_end_25} :catch_19
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 1555
    const/4 v7, 0x0

    .line 1556
    :try_start_26
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_26 .. :try_end_26} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_26 .. :try_end_26} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_26 .. :try_end_26} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_26 .. :try_end_26} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_26 .. :try_end_26} :catch_19
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 1562
    :goto_f
    const/4 v2, 0x1

    :try_start_27
    const-string v14, "Sending only SD/BL"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1563
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "Resending Start DFU command (Op Code = 1, Upload Mode = "

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ")"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1564
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1565
    const/16 v2, 0xa

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DFU Start sent (Op Code = 1, Upload Mode = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1568
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "Sending image size array to DFU Packet: ["

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "b, "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "b, "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "b]"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 1569
    invoke-direct/range {v2 .. v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V

    .line 1570
    const/16 v2, 0xa

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Firmware image size sent ["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "b, "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "b, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "b]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1573
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v2

    .line 1574
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v5

    .line 1575
    const/16 v6, 0xa

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "Response received (Op Code = "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aget-byte v2, v2, v14

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " Status = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1576
    const/4 v2, 0x1

    if-eq v5, v2, :cond_2b

    .line 1577
    new-instance v2, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v6, "Starting DFU failed"

    invoke-direct {v2, v6, v5}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_27
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_27 .. :try_end_27} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_27 .. :try_end_27} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_27 .. :try_end_27} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_27 .. :try_end_27} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_27 .. :try_end_27} :catch_19
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 1848
    :catch_16
    move-exception v2

    :try_start_28
    const-string v2, "Upload aborted"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1849
    const/16 v2, 0xf

    const-string v4, "Upload aborted"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1850
    move-object/from16 v0, p0

    iget v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    const/4 v4, -0x3

    if-ne v2, v4, :cond_24

    .line 1852
    const/4 v2, 0x0

    :try_start_29
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    .line 1853
    const-string v2, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1854
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1855
    const/16 v2, 0xa

    const-string v4, "Reset request sent"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1f
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 1859
    :cond_24
    :goto_10
    const/4 v2, -0x7

    :try_start_2a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto/16 :goto_e

    .line 1888
    :catchall_0
    move-exception v2

    .line 1890
    const/4 v3, 0x0

    :try_start_2b
    move-object/from16 v0, p0

    iput-object v3, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1891
    if-eqz v8, :cond_25

    .line 1892
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_1d

    .line 1895
    :cond_25
    :goto_11
    throw v2

    .line 1579
    :cond_26
    :try_start_2c
    throw v2
    :try_end_2c
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_2c .. :try_end_2c} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_2c .. :try_end_2c} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_2c .. :try_end_2c} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_2c .. :try_end_2c} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_2c .. :try_end_2c} :catch_19
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 1860
    :catch_17
    move-exception v2

    .line 1861
    const/16 v4, 0x14

    :try_start_2d
    const-string v5, "Device has disconnected"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1863
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1864
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1865
    const/16 v2, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto/16 :goto_e

    .line 1585
    :cond_27
    const/4 v6, 0x4

    if-ne v5, v6, :cond_29

    .line 1587
    const/4 v2, 0x0

    :try_start_2e
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    .line 1590
    const-string v2, "DFU target does not support DFU v.2"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1591
    const/16 v2, 0xf

    const-string v6, "DFU target does not support DFU v.2"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1594
    const/4 v2, 0x1

    const-string v6, "Switching to DFU v.1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1595
    const-string v2, "Resending Start DFU command (Op Code = 1)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1596
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1597
    const/16 v2, 0xa

    const-string v6, "DFU Start sent (Op Code = 1)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1600
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Sending application image size to DFU Packet: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " bytes"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1601
    move-object/from16 v0, p0

    iget v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1602
    const/16 v2, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Firmware image size sent ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1605
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v2

    .line 1606
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v6

    .line 1607
    const/16 v7, 0xa

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Response received (Op Code = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    aget-byte v2, v2, v10

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", Status = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1608
    const/4 v2, 0x1

    if-eq v6, v2, :cond_2a

    .line 1609
    new-instance v2, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v4, "Starting DFU failed"

    invoke-direct {v2, v4, v6}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2e
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_2e .. :try_end_2e} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_2e .. :try_end_2e} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_2e .. :try_end_2e} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_2e .. :try_end_2e} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_2e .. :try_end_2e} :catch_19
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 1837
    :catch_18
    move-exception v2

    .line 1838
    :try_start_2f
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getErrorNumber()I

    move-result v4

    or-int/lit16 v4, v4, 0x2000

    .line 1839
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1840
    const/16 v2, 0x14

    const-string v5, "Remote DFU error: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Lno/nordicsemi/android/a/a;->b(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1842
    const-string v2, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1843
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1844
    const/16 v2, 0xa

    const-string v5, "Reset request sent"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1845
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_2f
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_2f .. :try_end_2f} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_2f .. :try_end_2f} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_2f .. :try_end_2f} :catch_19
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto/16 :goto_e

    .line 1866
    :catch_19
    move-exception v2

    .line 1867
    :try_start_30
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;->getErrorNumber()I

    move-result v4

    .line 1869
    const v5, 0x8000

    and-int/2addr v5, v4

    if-lez v5, :cond_3a

    .line 1870
    const v5, -0x8001

    and-int/2addr v4, v5

    .line 1871
    const/16 v5, 0x14

    const-string v6, "Error (0x%02X): %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v4}, Lno/nordicsemi/android/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1876
    :goto_12
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1877
    move-object/from16 v0, p0

    iget v4, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    const/4 v5, -0x3

    if-ne v4, v5, :cond_28

    .line 1879
    :try_start_31
    const-string v4, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1880
    sget-object v4, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1881
    const/16 v4, 0xa

    const-string v5, "Reset request sent"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1e
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    .line 1885
    :cond_28
    :goto_13
    :try_start_32
    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;->getErrorNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    goto/16 :goto_e

    .line 1611
    :cond_29
    :try_start_33
    throw v2

    :cond_2a
    move v9, v5

    .line 1650
    :cond_2b
    if-eqz v12, :cond_2d

    .line 1651
    const/16 v2, 0xa

    const-string v5, "Writing Initialize DFU Parameters..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1653
    const-string v2, "Sending the Initialize DFU Parameters START (Op Code = 2, Value = 0)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1654
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_START:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    :try_end_33
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_33 .. :try_end_33} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_33 .. :try_end_33} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_33 .. :try_end_33} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_33 .. :try_end_33} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_33 .. :try_end_33} :catch_19
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 1657
    const/16 v2, 0x14

    :try_start_34
    new-array v2, v2, [B

    .line 1659
    :goto_14
    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual {v12, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2c

    .line 1660
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeInitPacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1a
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_34 .. :try_end_34} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_34 .. :try_end_34} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_34 .. :try_end_34} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_34 .. :try_end_34} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_34 .. :try_end_34} :catch_19
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    goto :goto_14

    .line 1663
    :catch_1a
    move-exception v2

    :try_start_35
    const-string v2, "Error while reading Init packet file"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1664
    new-instance v2, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v4, "Error while reading Init packet file"

    const/16 v5, 0x1002

    invoke-direct {v2, v4, v5}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1666
    :cond_2c
    const-string v2, "Sending the Initialize DFU Parameters COMPLETE (Op Code = 2, Value = 1)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1667
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1668
    const/16 v2, 0xa

    const-string v5, "Initialize DFU Parameters completed"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1671
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v2

    .line 1672
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v5

    .line 1673
    const/16 v6, 0xa

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Response received (Op Code = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    aget-byte v2, v2, v10

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", Status = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1674
    const/4 v2, 0x1

    if-eq v5, v2, :cond_2e

    .line 1675
    new-instance v2, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v4, "Device returned error after sending init packet"

    invoke-direct {v2, v4, v5}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1677
    :cond_2d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    .line 1680
    :cond_2e
    move-object/from16 v0, p0

    iget v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I

    .line 1681
    if-lez v2, :cond_2f

    .line 1682
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending the number of packets before notifications (Op Code = 8, Value = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1683
    sget-object v5, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->setNumberOfPackets([BI)V

    .line 1684
    sget-object v5, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1685
    const/16 v5, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Packet Receipt Notif Req (Op Code = 8) sent (Value = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1689
    :cond_2f
    const-string v2, "Sending Receive Firmware Image request (Op Code = 3)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1690
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1691
    const/16 v2, 0xa

    const-string v5, "Receive Firmware Image request sent"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1694
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mStartTime:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgressTime:J

    .line 1695
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification()V
    :try_end_35
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_35 .. :try_end_35} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_35 .. :try_end_35} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_35 .. :try_end_35} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_35 .. :try_end_35} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_35 .. :try_end_35} :catch_19
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 1697
    :try_start_36
    const-string v2, "Uploading firmware..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1698
    const/16 v2, 0xa

    const-string v5, "Uploading firmware..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1699
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->uploadFirmwareImage(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/InputStream;)[B
    :try_end_36
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_36 .. :try_end_36} :catch_1b
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_36 .. :try_end_36} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_36 .. :try_end_36} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_36 .. :try_end_36} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_36 .. :try_end_36} :catch_19
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    move-result-object v2

    .line 1705
    :try_start_37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1708
    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v10

    .line 1709
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Response received. Op Code: "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    aget-byte v14, v2, v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " Req Op Code = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v14, 0x1

    aget-byte v14, v2, v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", Status = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v14, 0x2

    aget-byte v14, v2, v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1710
    const/16 v12, 0xa

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Response received (Op Code = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    aget-byte v2, v2, v15

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ", Status = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ")"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1711
    const/4 v2, 0x1

    if-eq v10, v2, :cond_30

    .line 1712
    new-instance v2, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v4, "Device returned error after sending file"

    invoke-direct {v2, v4, v10}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1700
    :catch_1b
    move-exception v2

    .line 1701
    const-string v4, "Disconnected while sending data"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1702
    throw v2

    .line 1714
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Transfer of "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v10, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " bytes has taken "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v14, v4, v6

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " ms"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1715
    const/16 v2, 0xa

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Upload completed in "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1718
    const-string v2, "Sending Validate request (Op Code = 4)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1719
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_VALIDATE:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1720
    const/16 v2, 0xa

    const-string v4, "Validate request sent"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1723
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v2

    .line 1724
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v4

    .line 1725
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response received. Op Code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Req Op Code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1726
    const/16 v5, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Response received (Op Code = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aget-byte v2, v2, v7

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", Status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1727
    const/4 v2, 0x1

    if-eq v4, v2, :cond_31

    .line 1728
    new-instance v2, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v5, "Device returned validation error"

    invoke-direct {v2, v5, v4}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1731
    :cond_31
    const/4 v2, -0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 1732
    const-string v2, "Sending Activate and Reset request (Op Code = 5)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1733
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_ACTIVATE_AND_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1734
    const/16 v2, 0xa

    const-string v4, "Activate and Reset request sent"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1737
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitUntilDisconnected()V

    .line 1738
    const/4 v2, 0x5

    const-string v4, "Disconnected by the remote device"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1744
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1745
    const/4 v2, 0x5

    if-eq v11, v2, :cond_32

    if-nez v4, :cond_36

    :cond_32
    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 1748
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1753
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v5, 0xc

    if-ne v2, v5, :cond_35

    .line 1754
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_RESTORE_BOND"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1756
    if-nez v2, :cond_33

    if-eqz v4, :cond_33

    and-int/lit8 v4, v9, 0x1

    if-lez v4, :cond_34

    .line 1758
    :cond_33
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1761
    monitor-enter p0
    :try_end_37
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_37 .. :try_end_37} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_37 .. :try_end_37} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_37 .. :try_end_37} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_37 .. :try_end_37} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_37 .. :try_end_37} :catch_19
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    .line 1763
    const-wide/16 v4, 0x7d0

    :try_start_38
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_38} :catch_1c
    .catchall {:try_start_38 .. :try_end_38} :catchall_1

    .line 1767
    :goto_16
    :try_start_39
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1

    .line 1770
    :cond_34
    if-eqz v2, :cond_35

    and-int/lit8 v2, v9, 0x4

    if-lez v2, :cond_35

    .line 1772
    :try_start_3a
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1781
    :cond_35
    move-object/from16 v0, p0

    iget v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    move-object/from16 v0, p0

    iget v4, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    if-ne v2, v4, :cond_37

    .line 1783
    move-object/from16 v0, p0

    iget-object v4, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3a
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_3a .. :try_end_3a} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_3a .. :try_end_3a} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_3a .. :try_end_3a} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_3a .. :try_end_3a} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_3a .. :try_end_3a} :catch_19
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    .line 1785
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    const-wide/16 v6, 0x578

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3b} :catch_20
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2

    .line 1789
    :goto_17
    :try_start_3c
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2

    .line 1790
    const/4 v2, -0x6

    :try_start_3d
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_3d
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_3d .. :try_end_3d} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_3d .. :try_end_3d} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_3d .. :try_end_3d} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_3d .. :try_end_3d} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_3d .. :try_end_3d} :catch_19
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    goto/16 :goto_e

    .line 1745
    :cond_36
    const/4 v2, 0x0

    goto :goto_15

    .line 1767
    :catchall_1
    move-exception v2

    :try_start_3e
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1

    :try_start_3f
    throw v2
    :try_end_3f
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_3f .. :try_end_3f} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_3f .. :try_end_3f} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_3f .. :try_end_3f} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_3f .. :try_end_3f} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_3f .. :try_end_3f} :catch_19
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    .line 1789
    :catchall_2
    move-exception v2

    :try_start_40
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_2

    :try_start_41
    throw v2

    .line 1805
    :cond_37
    const/4 v2, 0x1

    const-string v4, "Scanning for the DFU Bootloader..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1806
    invoke-static {}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerFactory;->getScanner()Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScanner;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-interface {v2, v4}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScanner;->searchFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1807
    if-eqz v2, :cond_39

    .line 1808
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DFU Bootloader found with address "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1817
    :goto_18
    const-string v4, "Starting service that will upload application"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1818
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1819
    const/16 v5, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1820
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    const-string v6, "application/zip"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1822
    if-eqz v2, :cond_38

    .line 1823
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    :cond_38
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    move-object/from16 v0, p0

    iget v5, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1825
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    move-object/from16 v0, p0

    iget v5, v0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1826
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_e

    .line 1810
    :cond_39
    const/4 v4, 0x5

    const-string v5, "DFU Bootloader not found. Trying the same address..."

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_41
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_41 .. :try_end_41} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_41 .. :try_end_41} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_41 .. :try_end_41} :catch_16
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_41 .. :try_end_41} :catch_17
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_41 .. :try_end_41} :catch_19
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    goto :goto_18

    .line 1873
    :cond_3a
    and-int/lit16 v4, v4, -0x4001

    .line 1874
    const/16 v5, 0x14

    :try_start_42
    const-string v6, "Error (0x%02X): %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v4}, Lno/nordicsemi/android/a/a;->b(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    goto/16 :goto_12

    :catch_1c
    move-exception v4

    goto/16 :goto_16

    :catch_1d
    move-exception v3

    goto/16 :goto_11

    :catch_1e
    move-exception v4

    goto/16 :goto_13

    :catch_1f
    move-exception v2

    goto/16 :goto_10

    :catch_20
    move-exception v2

    goto/16 :goto_17

    :catch_21
    move-exception v2

    goto/16 :goto_f

    :cond_3b
    move v5, v2

    goto/16 :goto_d

    :cond_3c
    move-object v12, v3

    goto/16 :goto_8

    :cond_3d
    move v9, v4

    goto/16 :goto_7

    :cond_3e
    move-object v3, v7

    goto/16 :goto_6
.end method
