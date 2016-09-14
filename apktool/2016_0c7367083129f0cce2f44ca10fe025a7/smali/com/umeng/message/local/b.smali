.class public Lcom/umeng/message/local/b;
.super Ljava/lang/Object;
.source "UmengLocalNotification.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Lcom/umeng/message/local/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/umeng/message/local/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lcom/umeng/message/proguard/ad;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/umeng/message/local/b;->b:I

    .line 85
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/umeng/message/local/b;->c:I

    .line 86
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/local/b;->d:I

    .line 87
    const/16 v0, 0xc

    iput v0, p0, Lcom/umeng/message/local/b;->e:I

    .line 88
    iput v2, p0, Lcom/umeng/message/local/b;->f:I

    .line 89
    iput v2, p0, Lcom/umeng/message/local/b;->g:I

    .line 90
    iput v3, p0, Lcom/umeng/message/local/b;->h:I

    .line 91
    const/4 v0, 0x3

    iput v0, p0, Lcom/umeng/message/local/b;->i:I

    .line 92
    iput v3, p0, Lcom/umeng/message/local/b;->j:I

    .line 93
    iput v2, p0, Lcom/umeng/message/local/b;->k:I

    .line 94
    const-string v0, "test"

    iput-object v0, p0, Lcom/umeng/message/local/b;->l:Ljava/lang/String;

    .line 95
    const-string v0, "test message"

    iput-object v0, p0, Lcom/umeng/message/local/b;->m:Ljava/lang/String;

    .line 96
    const-string v0, "test"

    iput-object v0, p0, Lcom/umeng/message/local/b;->n:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/umeng/message/local/g;

    iget-object v1, p0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/umeng/message/local/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 105
    const-string v0, "year"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->b:I

    .line 106
    const-string v0, "month"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->c:I

    .line 107
    const-string v0, "day"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->d:I

    .line 108
    const-string v0, "hour"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->e:I

    .line 109
    const-string v0, "minute"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->f:I

    .line 110
    const-string v0, "second"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->g:I

    .line 111
    const-string v0, "repeating_num"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->h:I

    .line 112
    const-string v0, "repeating_unit"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->i:I

    .line 113
    const-string v0, "repeating_interval"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->j:I

    .line 114
    const-string v0, "special_day"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->k:I

    .line 115
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/b;->l:Ljava/lang/String;

    .line 116
    const-string v0, "content"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/b;->m:Ljava/lang/String;

    .line 117
    const-string v0, "ticker"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/b;->n:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/umeng/message/local/g;

    iget-object v1, p0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/umeng/message/local/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    goto/16 :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 244
    const-string v0, ""

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget v1, p0, Lcom/umeng/message/local/b;->c:I

    if-ge v1, v2, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    iget v1, p0, Lcom/umeng/message/local/b;->d:I

    if-ge v1, v2, :cond_1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_1
    iget v1, p0, Lcom/umeng/message/local/b;->e:I

    if-ge v1, v2, :cond_2

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_2
    iget v1, p0, Lcom/umeng/message/local/b;->f:I

    if-ge v1, v2, :cond_3

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_3
    iget v1, p0, Lcom/umeng/message/local/b;->g:I

    if-ge v1, v2, :cond_4

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_4
    return-object v0

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 253
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 257
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 261
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 265
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/local/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public final a(Lcom/umeng/message/local/g;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 1410
    iget-object v1, p1, Lcom/umeng/message/local/g;->c:Ljava/lang/String;

    .line 236
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "localNotificationId for notificationBuilder is not equal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 1414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1415
    iput-object v0, p1, Lcom/umeng/message/local/g;->c:Ljava/lang/String;

    .line 240
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    .line 241
    return-void

    .line 1417
    :cond_1
    const-string v0, ""

    iput-object v0, p1, Lcom/umeng/message/local/g;->c:Ljava/lang/String;

    .line 1418
    sget-object v0, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    const-string v1, "localNotificationId is null"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/16 v10, 0xc

    const/4 v3, 0x1

    const/16 v9, 0xa

    const/4 v2, 0x0

    .line 307
    iget v0, p0, Lcom/umeng/message/local/b;->k:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/umeng/message/local/b;->k:I

    if-le v0, v10, :cond_1

    .line 308
    :cond_0
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "specialDay is isValid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 519
    :goto_0
    return v0

    .line 312
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 314
    iget v1, p0, Lcom/umeng/message/local/b;->b:I

    if-ge v1, v0, :cond_2

    .line 315
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "year is isValid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 316
    goto :goto_0

    .line 319
    :cond_2
    iget v0, p0, Lcom/umeng/message/local/b;->c:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/umeng/message/local/b;->c:I

    if-le v0, v10, :cond_4

    .line 320
    :cond_3
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "month is isValid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 321
    goto :goto_0

    .line 324
    :cond_4
    iget v0, p0, Lcom/umeng/message/local/b;->d:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/umeng/message/local/b;->d:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_6

    .line 325
    :cond_5
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "day is isValid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 326
    goto :goto_0

    .line 329
    :cond_6
    iget v0, p0, Lcom/umeng/message/local/b;->c:I

    packed-switch v0, :pswitch_data_0

    .line 354
    :cond_7
    :pswitch_0
    iget v0, p0, Lcom/umeng/message/local/b;->e:I

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/umeng/message/local/b;->e:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_c

    .line 355
    :cond_8
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "hour is isValid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 356
    goto :goto_0

    .line 334
    :pswitch_1
    iget v0, p0, Lcom/umeng/message/local/b;->d:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_7

    .line 335
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "dateTime: day is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 336
    goto :goto_0

    .line 340
    :pswitch_2
    iget v0, p0, Lcom/umeng/message/local/b;->b:I

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_9

    iget v0, p0, Lcom/umeng/message/local/b;->b:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/umeng/message/local/b;->b:I

    rem-int/lit16 v0, v0, 0x190

    if-nez v0, :cond_b

    .line 341
    :cond_a
    iget v0, p0, Lcom/umeng/message/local/b;->d:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_7

    .line 342
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "dateTime: day is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 343
    goto/16 :goto_0

    .line 346
    :cond_b
    iget v0, p0, Lcom/umeng/message/local/b;->d:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_7

    .line 347
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "dateTime: day is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 348
    goto/16 :goto_0

    .line 359
    :cond_c
    iget v0, p0, Lcom/umeng/message/local/b;->f:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/umeng/message/local/b;->f:I

    const/16 v1, 0x3b

    if-le v0, v1, :cond_e

    .line 360
    :cond_d
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "minute is isValid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 361
    goto/16 :goto_0

    .line 364
    :cond_e
    iget v0, p0, Lcom/umeng/message/local/b;->g:I

    if-ltz v0, :cond_f

    iget v0, p0, Lcom/umeng/message/local/b;->g:I

    const/16 v1, 0x3b

    if-le v0, v1, :cond_10

    .line 365
    :cond_f
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "second is isValid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 366
    goto/16 :goto_0

    .line 371
    :cond_10
    iget v0, p0, Lcom/umeng/message/local/b;->k:I

    if-lez v0, :cond_1b

    iget v0, p0, Lcom/umeng/message/local/b;->k:I

    if-gt v0, v10, :cond_1b

    .line 372
    const-wide/16 v0, 0x0

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 375
    :try_start_0
    iget v4, p0, Lcom/umeng/message/local/b;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_1

    .line 493
    :cond_11
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 494
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 495
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->b:I

    .line 496
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/message/local/b;->c:I

    .line 497
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->d:I

    .line 498
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->e:I

    .line 499
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->f:I

    .line 500
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/b;->g:I

    .line 502
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "year="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/umeng/message/local/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/umeng/message/local/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/umeng/message/local/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",specialDay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/umeng/message/local/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 504
    goto/16 :goto_0

    .line 377
    :pswitch_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/umeng/message/local/b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-01-01 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/umeng/message/local/b;->e:I

    if-lt v4, v9, :cond_12

    iget v4, p0, Lcom/umeng/message/local/b;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/umeng/message/local/b;->f:I

    if-lt v4, v9, :cond_13

    iget v4, p0, Lcom/umeng/message/local/b;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/umeng/message/local/b;->g:I

    if-lt v4, v9, :cond_14

    iget v4, p0, Lcom/umeng/message/local/b;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 382
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 383
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u5143\u65e6\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 384
    goto/16 :goto_0

    .line 378
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/umeng/message/local/b;->e:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 379
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/umeng/message/local/b;->f:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 380
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/umeng/message/local/b;->g:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 388
    :pswitch_4
    const/16 v4, 0xc

    iput v4, p0, Lcom/umeng/message/local/b;->c:I

    .line 389
    iget v4, p0, Lcom/umeng/message/local/b;->b:I

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/umeng/message/local/a;->a(II)I

    move-result v4

    iput v4, p0, Lcom/umeng/message/local/b;->d:I

    .line 390
    invoke-direct {p0}, Lcom/umeng/message/local/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 391
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 392
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u9664\u5915\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 393
    goto/16 :goto_0

    .line 397
    :pswitch_5
    const/4 v4, 0x1

    iput v4, p0, Lcom/umeng/message/local/b;->c:I

    .line 398
    const/4 v4, 0x1

    iput v4, p0, Lcom/umeng/message/local/b;->d:I

    .line 399
    invoke-direct {p0}, Lcom/umeng/message/local/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 400
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 401
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u6625\u8282\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 402
    goto/16 :goto_0

    .line 406
    :pswitch_6
    const/4 v4, 0x1

    iput v4, p0, Lcom/umeng/message/local/b;->c:I

    .line 407
    const/16 v4, 0xf

    iput v4, p0, Lcom/umeng/message/local/b;->d:I

    .line 408
    invoke-direct {p0}, Lcom/umeng/message/local/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 409
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 410
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u5143\u5bb5\u8282\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 411
    goto/16 :goto_0

    .line 415
    :pswitch_7
    iget v4, p0, Lcom/umeng/message/local/b;->b:I

    iget v5, p0, Lcom/umeng/message/local/b;->e:I

    iget v8, p0, Lcom/umeng/message/local/b;->f:I

    iget v9, p0, Lcom/umeng/message/local/b;->g:I

    invoke-static {v4, v5, v8, v9}, Lcom/umeng/message/local/c;->a(IIII)J

    move-result-wide v0

    .line 416
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 417
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u6e05\u660e\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 418
    goto/16 :goto_0

    .line 422
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/umeng/message/local/b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-05-01 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/umeng/message/local/b;->e:I

    if-lt v4, v9, :cond_15

    iget v4, p0, Lcom/umeng/message/local/b;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/umeng/message/local/b;->f:I

    if-lt v4, v9, :cond_16

    iget v4, p0, Lcom/umeng/message/local/b;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/umeng/message/local/b;->g:I

    if-lt v4, v9, :cond_17

    iget v4, p0, Lcom/umeng/message/local/b;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 427
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 428
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u4e94\u4e00\u52b3\u52a8\u8282\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 429
    goto/16 :goto_0

    .line 423
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/umeng/message/local/b;->e:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 424
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/umeng/message/local/b;->f:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 425
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/umeng/message/local/b;->g:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 433
    :pswitch_9
    const/4 v4, 0x5

    iput v4, p0, Lcom/umeng/message/local/b;->c:I

    .line 434
    const/4 v4, 0x5

    iput v4, p0, Lcom/umeng/message/local/b;->d:I

    .line 435
    invoke-direct {p0}, Lcom/umeng/message/local/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 436
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 437
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u7aef\u5348\u8282\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 438
    goto/16 :goto_0

    .line 442
    :pswitch_a
    const/4 v4, 0x7

    iput v4, p0, Lcom/umeng/message/local/b;->c:I

    .line 443
    const/4 v4, 0x7

    iput v4, p0, Lcom/umeng/message/local/b;->d:I

    .line 444
    invoke-direct {p0}, Lcom/umeng/message/local/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 445
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 446
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u4e03\u5915\u8282\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 447
    goto/16 :goto_0

    .line 451
    :pswitch_b
    const/16 v4, 0x8

    iput v4, p0, Lcom/umeng/message/local/b;->c:I

    .line 452
    const/16 v4, 0xf

    iput v4, p0, Lcom/umeng/message/local/b;->d:I

    .line 453
    invoke-direct {p0}, Lcom/umeng/message/local/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 454
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 455
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u6625\u8282\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 456
    goto/16 :goto_0

    .line 460
    :pswitch_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/umeng/message/local/b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-10-01 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/umeng/message/local/b;->e:I

    if-lt v4, v9, :cond_18

    iget v4, p0, Lcom/umeng/message/local/b;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/umeng/message/local/b;->f:I

    if-lt v4, v9, :cond_19

    iget v4, p0, Lcom/umeng/message/local/b;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_9
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/umeng/message/local/b;->g:I

    if-lt v4, v9, :cond_1a

    iget v4, p0, Lcom/umeng/message/local/b;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 465
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 466
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u56fd\u5e86\u8282\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 467
    goto/16 :goto_0

    .line 461
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/umeng/message/local/b;->e:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 462
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/umeng/message/local/b;->f:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 463
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/umeng/message/local/b;->g:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 471
    :pswitch_d
    const/16 v4, 0x9

    iput v4, p0, Lcom/umeng/message/local/b;->c:I

    .line 472
    const/16 v4, 0x9

    iput v4, p0, Lcom/umeng/message/local/b;->d:I

    .line 473
    invoke-direct {p0}, Lcom/umeng/message/local/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 474
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 475
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u6e05\u660e\u8282\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 476
    goto/16 :goto_0

    .line 480
    :pswitch_e
    const/16 v4, 0xc

    iput v4, p0, Lcom/umeng/message/local/b;->c:I

    .line 481
    const/16 v4, 0x8

    iput v4, p0, Lcom/umeng/message/local/b;->d:I

    .line 482
    invoke-direct {p0}, Lcom/umeng/message/local/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 483
    cmp-long v4, v0, v6

    if-gez v4, :cond_11

    .line 484
    sget-object v4, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v5, "\u814a\u516b\u8282\u7684\u5f00\u59cb\u5e74\u4efd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 485
    goto/16 :goto_0

    .line 490
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 507
    :cond_1b
    const-wide/16 v0, 0x0

    .line 509
    :try_start_2
    invoke-direct {p0}, Lcom/umeng/message/local/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    .line 514
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_1c

    .line 515
    sget-object v0, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v1, "dateTime: date time is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 516
    goto/16 :goto_0

    .line 512
    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :cond_1c
    move v0, v3

    .line 519
    goto/16 :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 375
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 523
    iget v1, p0, Lcom/umeng/message/local/b;->h:I

    const/4 v2, -0x1

    if-ge v1, v2, :cond_0

    .line 524
    sget-object v1, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v2, "repeatingNum is isValid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_0
    return v0

    .line 528
    :cond_0
    iget v1, p0, Lcom/umeng/message/local/b;->j:I

    if-gtz v1, :cond_1

    .line 529
    sget-object v1, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v2, "repeatingInterval is isValid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_1
    iget v1, p0, Lcom/umeng/message/local/b;->i:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/umeng/message/local/b;->i:I

    if-le v1, v3, :cond_3

    .line 534
    :cond_2
    sget-object v1, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v2, "repeatingUnit is isValid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_3
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/PushAgent;->getLocalNotificationIntervalLimit()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 539
    iget v1, p0, Lcom/umeng/message/local/b;->i:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/umeng/message/local/b;->j:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_5

    :cond_4
    iget v1, p0, Lcom/umeng/message/local/b;->i:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/umeng/message/local/b;->j:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_6

    .line 541
    :cond_5
    sget-object v1, Lcom/umeng/message/local/b;->p:Ljava/lang/String;

    const-string v2, "repeatingInterval is less than 10 minutes for limit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 618
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 619
    const-string v1, "id"

    iget-object v2, p0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v1, "year"

    iget v2, p0, Lcom/umeng/message/local/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string v1, "month"

    iget v2, p0, Lcom/umeng/message/local/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v1, "day"

    iget v2, p0, Lcom/umeng/message/local/b;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    const-string v1, "hour"

    iget v2, p0, Lcom/umeng/message/local/b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    const-string v1, "minute"

    iget v2, p0, Lcom/umeng/message/local/b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v1, "second"

    iget v2, p0, Lcom/umeng/message/local/b;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    const-string v1, "repeating_num"

    iget v2, p0, Lcom/umeng/message/local/b;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    const-string v1, "repeating_unit"

    iget v2, p0, Lcom/umeng/message/local/b;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    const-string v1, "repeating_interval"

    iget v2, p0, Lcom/umeng/message/local/b;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    const-string v1, "special_day"

    iget v2, p0, Lcom/umeng/message/local/b;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    const-string v1, "title"

    iget-object v2, p0, Lcom/umeng/message/local/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v1, "content"

    iget-object v2, p0, Lcom/umeng/message/local/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v1, "ticker"

    iget-object v2, p0, Lcom/umeng/message/local/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-object v0
.end method
