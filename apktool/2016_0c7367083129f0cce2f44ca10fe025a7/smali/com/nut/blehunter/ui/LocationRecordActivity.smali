.class public Lcom/nut/blehunter/ui/LocationRecordActivity;
.super Lcom/nut/blehunter/ui/b;
.source "LocationRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nut/blehunter/ui/b/q;
.implements Lcom/nut/blehunter/ui/b/s;
.implements Lcom/nut/blehunter/ui/b/t;
.implements Lcom/nut/blehunter/ui/b/v;


# instance fields
.field private a:Lcom/nut/blehunter/ui/b/i;

.field private b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Position;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Position;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lorg/threeten/bp/j;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    .line 436
    return-void
.end method

.method private static a(Lorg/threeten/bp/j;Lcom/nut/blehunter/entity/Position;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/j;",
            "Lcom/nut/blehunter/entity/Position;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v7, 0x1

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    .line 314
    new-instance v0, Ljava/sql/Date;

    iget-wide v2, p1, Lcom/nut/blehunter/entity/Position;->f:J

    mul-long/2addr v2, v8

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v0}, Lorg/threeten/bp/c;->a(Ljava/sql/Date;)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-wide v0, p1, Lcom/nut/blehunter/entity/Position;->f:J

    mul-long/2addr v0, v8

    .line 328
    :goto_0
    iget-wide v2, p1, Lcom/nut/blehunter/entity/Position;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 329
    const-wide/16 v2, 0x0

    .line 343
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 317
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2650
    iget v1, p0, Lorg/threeten/bp/j;->d:I

    .line 318
    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 2664
    iget-short v1, p0, Lorg/threeten/bp/j;->e:S

    .line 319
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 2690
    iget-short v1, p0, Lorg/threeten/bp/j;->f:S

    .line 320
    invoke-virtual {v0, v11, v1}, Ljava/util/Calendar;->set(II)V

    .line 321
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 322
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 323
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 324
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 325
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    .line 330
    :cond_1
    new-instance v2, Ljava/sql/Date;

    iget-wide v4, p1, Lcom/nut/blehunter/entity/Position;->g:J

    mul-long/2addr v4, v8

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v2}, Lorg/threeten/bp/c;->a(Ljava/sql/Date;)Lorg/threeten/bp/j;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/a/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    iget-wide v2, p1, Lcom/nut/blehunter/entity/Position;->g:J

    mul-long/2addr v2, v8

    goto :goto_1

    .line 333
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 3650
    iget v3, p0, Lorg/threeten/bp/j;->d:I

    .line 334
    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 3664
    iget-short v3, p0, Lorg/threeten/bp/j;->e:S

    .line 335
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 3690
    iget-short v3, p0, Lorg/threeten/bp/j;->f:S

    .line 336
    invoke-virtual {v2, v11, v3}, Ljava/util/Calendar;->set(II)V

    .line 337
    const/16 v3, 0xb

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 338
    const/16 v3, 0xc

    const/16 v4, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 339
    const/16 v3, 0xd

    const/16 v4, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 340
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 341
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LocationRecordActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LocationRecordActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->e:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LocationRecordActivity;ILjava/util/HashMap;)Lrx/h;
    .locals 1

    .prologue
    .line 6217
    new-instance v0, Lcom/nut/blehunter/ui/bm;

    invoke-direct {v0, p0, p1, p2}, Lcom/nut/blehunter/ui/bm;-><init>(Lcom/nut/blehunter/ui/LocationRecordActivity;ILjava/util/HashMap;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/i;)Lrx/h;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LocationRecordActivity;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    .line 6125
    iget-object v3, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 6126
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->d:Landroid/widget/ImageView;

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 6125
    goto :goto_0

    :cond_1
    move v1, v2

    .line 6126
    goto :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LocationRecordActivity;Lorg/threeten/bp/j;Ljava/util/List;)V
    .locals 10

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 50
    .line 5275
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_1

    .line 5278
    iput-object p1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->k:Lorg/threeten/bp/j;

    move-object v0, p2

    .line 5279
    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->j:Ljava/util/ArrayList;

    .line 5280
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5281
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/i;->f_()V

    .line 5282
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5283
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5284
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5285
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    .line 5287
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5288
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5289
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5291
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 5292
    :goto_1
    if-ge v2, v4, :cond_5

    .line 5293
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Position;

    .line 5294
    new-instance v5, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v6, v0, Lcom/nut/blehunter/entity/Position;->d:D

    iget-wide v8, v0, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    .line 5295
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5296
    iget-object v6, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    const-string v7, ""

    add-int/lit8 v1, v4, -0x1

    if-ne v2, v1, :cond_4

    const/16 v1, 0xc

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v1, v8}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5298
    invoke-static {p1, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lorg/threeten/bp/j;Lcom/nut/blehunter/entity/Position;)Landroid/util/Pair;

    move-result-object v0

    .line 5299
    iget-object v5, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5300
    add-int/lit8 v0, v4, -0x1

    if-ne v2, v0, :cond_3

    .line 5301
    iput-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->h:Ljava/lang/String;

    .line 5292
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5296
    :cond_4
    const/16 v1, 0xb

    goto :goto_2

    .line 5304
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5305
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/util/ArrayList;)V

    .line 5306
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->i:I

    .line 5307
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->h:Ljava/lang/String;

    iget v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->i:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-direct {p0, v1, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->b(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/LocationRecordActivity;)Lcom/nut/blehunter/ui/widget/WeekDatePicker;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 8

    .prologue
    const/16 v7, 0x3b

    .line 387
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4411
    if-eqz p2, :cond_0

    .line 4414
    new-instance v0, Lcom/nut/blehunter/b/b;

    .line 5048
    iget-wide v2, p2, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 5052
    iget-wide v4, p2, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 4414
    new-instance v6, Lcom/nut/blehunter/ui/bo;

    invoke-direct {v6, p0, p1}, Lcom/nut/blehunter/ui/bo;-><init>(Lcom/nut/blehunter/ui/LocationRecordActivity;Ljava/lang/String;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nut/blehunter/b/b;-><init>(Landroid/content/Context;DDLcom/nut/blehunter/b/e;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 390
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->m:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/e;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :goto_0
    return-void

    .line 393
    :cond_1
    new-instance v2, Ljava/sql/Date;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v2}, Lorg/threeten/bp/c;->a(Ljava/sql/Date;)Lorg/threeten/bp/j;

    move-result-object v2

    .line 394
    new-instance v3, Ljava/sql/Date;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v3}, Lorg/threeten/bp/c;->a(Ljava/sql/Date;)Lorg/threeten/bp/j;

    move-result-object v1

    .line 395
    invoke-virtual {v2, v1}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/a/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    iget-object v2, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->m:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/e;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "----"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/e;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 398
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 399
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 400
    const/16 v1, 0xb

    const/16 v3, 0x17

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 401
    const/16 v1, 0xc

    invoke-virtual {v2, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 402
    const/16 v1, 0xd

    invoke-virtual {v2, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 403
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->m:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/e;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/e;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/LocationRecordActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/LocationRecordActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/LocationRecordActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 10

    .prologue
    .line 353
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->h:Ljava/lang/String;

    .line 4360
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 4361
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 4362
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;)V

    .line 4363
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4364
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->j:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->i:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Position;

    .line 4365
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    const-string v3, ""

    new-instance v4, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v6, v0, Lcom/nut/blehunter/entity/Position;->d:D

    iget-wide v8, v0, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    const/16 v0, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->i:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4366
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4368
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 4369
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4370
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 4371
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/entity/Position;

    .line 4372
    iget-object v4, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->k:Lorg/threeten/bp/j;

    invoke-static {v4, v1}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lorg/threeten/bp/j;Lcom/nut/blehunter/entity/Position;)Landroid/util/Pair;

    move-result-object v4

    .line 4373
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4374
    iput v2, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->i:I

    .line 4378
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 4379
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v1, p1}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;)V

    .line 4380
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4381
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    const-string v2, ""

    const/16 v3, 0xc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->i:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/nut/blehunter/ui/b/i;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->h:Ljava/lang/String;

    .line 4382
    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4383
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->h:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/nut/blehunter/ui/LocationRecordActivity;->b(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;)V

    goto/16 :goto_0

    .line 4370
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->finish()V

    .line 433
    const/4 v0, 0x0

    const v1, 0x7f040011

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/LocationRecordActivity;->overridePendingTransition(II)V

    .line 434
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 428
    :goto_0
    :pswitch_0
    return-void

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getSelectedWeek()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(I)V

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getSelectedWeek()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(I)V

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x7f0d00d5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f06011d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(I)V

    .line 87
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->g:Ljava/lang/String;

    .line 88
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/n;->a(Landroid/content/Context;)Lcom/nut/blehunter/ui/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    .line 89
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->a(Z)V

    .line 91
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/s;)V

    .line 92
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 93
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/q;)V

    .line 94
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/ui/b/v;)V

    .line 95
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d00d4

    iget-object v2, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    iget-object v3, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->a:Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v3}, Lcom/nut/blehunter/ui/b/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 99
    :cond_0
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    .line 100
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    new-instance v1, Lcom/nut/blehunter/ui/bh;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bh;-><init>(Lcom/nut/blehunter/ui/LocationRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setOnDateSelectedListener(Lcom/nut/blehunter/ui/widget/z;)V

    .line 108
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    new-instance v1, Lcom/nut/blehunter/ui/bi;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bi;-><init>(Lcom/nut/blehunter/ui/LocationRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setOnWeekChangedListener(Lcom/nut/blehunter/ui/widget/aa;)V

    .line 114
    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->c:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->d:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->l:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->m:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0d00d2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->n:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public final p()V
    .locals 6

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->g:Ljava/lang/String;

    .line 1224
    const-string v1, "sync_time"

    invoke-static {p0, v1}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync_date_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 138
    if-nez v0, :cond_0

    const v0, 0x263b80

    sub-int v0, v1, v0

    .line 2143
    :goto_0
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/LocationRecordActivity;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lcom/nut/blehunter/rxApi/service/FriendsService;->getLocationRecord(Ljava/lang/String;II)Lrx/h;

    move-result-object v2

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v2

    new-instance v3, Lcom/nut/blehunter/ui/bl;

    invoke-direct {v3, p0, v1, v0}, Lcom/nut/blehunter/ui/bl;-><init>(Lcom/nut/blehunter/ui/LocationRecordActivity;II)V

    invoke-virtual {v2, v3}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/bj;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bj;-><init>(Lcom/nut/blehunter/ui/LocationRecordActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 140
    return-void

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
