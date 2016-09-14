.class public final Lcom/nut/blehunter/ble/a;
.super Ljava/lang/Object;
.source "AlertManager.java"


# static fields
.field public static a:Z


# instance fields
.field public b:I

.field c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Landroid/os/Vibrator;

.field private i:Landroid/media/MediaPlayer;

.field private j:Landroid/media/MediaPlayer;

.field private k:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nut/blehunter/ble/a;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/nut/blehunter/ble/a;->e:Z

    .line 35
    new-instance v0, Lcom/nut/blehunter/ble/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ble/b;-><init>(Lcom/nut/blehunter/ble/a;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/a;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    .line 51
    iput v1, p0, Lcom/nut/blehunter/ble/a;->b:I

    .line 52
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/nut/blehunter/ble/a;->h:Landroid/os/Vibrator;

    .line 53
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    .line 54
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ble/a;->f:I

    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ble/a;->g:I

    .line 56
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/nut/blehunter/ble/a;->h:Landroid/os/Vibrator;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ble/a;)V
    .locals 1

    .prologue
    .line 17
    .line 3158
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 17
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/ble/a;)V
    .locals 1

    .prologue
    .line 17
    .line 4152
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 4153
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 17
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/ble/a;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/nut/blehunter/ble/a;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/nut/blehunter/ble/a;)V
    .locals 3

    .prologue
    .line 17
    .line 5105
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->h:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5106
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 5107
    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->h:Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 17
    :cond_0
    return-void

    .line 5106
    nop

    :array_0
    .array-data 8
        0x64
        0x12c
        0xc8
        0x12c
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 88
    :try_start_0
    iget v0, p0, Lcom/nut/blehunter/ble/a;->g:I

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/nut/blehunter/ble/a;->f:I

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 94
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ble/a;->e:Z

    .line 98
    :goto_1
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(IZ)V
    .locals 6

    .prologue
    .line 112
    const v3, 0x7f050001

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nut/blehunter/ble/a;->a(IZIZI)V

    .line 113
    return-void
.end method

.method public final a(IZIZI)V
    .locals 4

    .prologue
    .line 120
    iget v0, p0, Lcom/nut/blehunter/ble/a;->b:I

    if-lez v0, :cond_1

    .line 121
    iget v0, p0, Lcom/nut/blehunter/ble/a;->b:I

    if-le p1, v0, :cond_0

    .line 122
    iget v0, p0, Lcom/nut/blehunter/ble/a;->b:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 123
    iget v1, p0, Lcom/nut/blehunter/ble/a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nut/blehunter/ble/a;->b:I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ble/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    sget-boolean v0, Lcom/nut/blehunter/ble/a;->a:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 1074
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/nut/blehunter/ble/a;->e:Z

    .line 1075
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ble/a;->g:I

    .line 1076
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ble/a;->f:I

    .line 1077
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 1078
    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1079
    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :cond_2
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    .line 137
    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 138
    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 139
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 140
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 141
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/nut/blehunter/ble/c;

    invoke-direct {v1, p0, p1, p4}, Lcom/nut/blehunter/ble/c;-><init>(Lcom/nut/blehunter/ble/a;IZ)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 142
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 143
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 144
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1082
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 131
    :cond_3
    if-eqz p2, :cond_2

    .line 2061
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/nut/blehunter/ble/a;->e:Z

    .line 2062
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ble/a;->g:I

    .line 2063
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ble/a;->f:I

    .line 2064
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 2065
    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 2068
    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/nut/blehunter/ble/a;->b:I

    .line 166
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 168
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/a;->i:Landroid/media/MediaPlayer;

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/nut/blehunter/ble/a;->e:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/nut/blehunter/ble/a;->a()V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ble/a;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 182
    .line 2201
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2202
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2203
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 184
    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/2131034120"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    .line 186
    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 187
    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 188
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->d:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 189
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 190
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 191
    iget-object v0, p0, Lcom/nut/blehunter/ble/a;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 197
    :goto_1
    return-void

    .line 2207
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 195
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 212
    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/nut/blehunter/ble/a;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 217
    iget-object v1, p0, Lcom/nut/blehunter/ble/a;->k:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/nut/blehunter/ble/a;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
