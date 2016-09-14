.class Landroid/support/v7/widget/x;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/Object;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/y;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private i:Landroid/content/Intent;

.field private j:Landroid/support/v7/widget/z;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/support/v7/widget/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const-class v0, Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/x;->c:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/x;->d:Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/x;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/x;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/x;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/x;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/x;->l:Z

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/support/v7/widget/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/x;->j:Landroid/support/v7/widget/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    .line 673
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Ljava/util/List;

    .line 675
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 676
    const/4 v0, 0x1

    .line 678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/x;->k:I

    sub-int v2, v0, v2

    .line 744
    if-gtz v2, :cond_1

    .line 754
    :cond_0
    return-void

    .line 747
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/x;->n:Z

    move v0, v1

    .line 748
    :goto_0
    if-ge v0, v2, :cond_0

    .line 749
    iget-object v3, p0, Landroid/support/v7/widget/x;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 962
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/x;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 970
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 971
    const-string v0, "UTF-8"

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 973
    const/4 v0, 0x0

    .line 974
    :goto_0
    if-eq v0, v8, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 975
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 978
    :cond_0
    const-string v0, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 979
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    :try_start_2
    sget-object v2, Landroid/support/v7/widget/x;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v7/widget/x;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1020
    if-eqz v1, :cond_1

    .line 1022
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1028
    :cond_1
    :goto_1
    return-void

    .line 983
    :cond_2
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Ljava/util/List;

    .line 984
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 987
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 988
    if-eq v3, v8, :cond_6

    .line 991
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 994
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 995
    const-string v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 996
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file not well-formed."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1017
    :catch_1
    move-exception v0

    .line 1018
    :try_start_5
    sget-object v2, Landroid/support/v7/widget/x;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v7/widget/x;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1020
    if-eqz v1, :cond_1

    .line 1022
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1025
    :catch_2
    move-exception v0

    goto :goto_1

    .line 999
    :cond_4
    const/4 v3, 0x0

    :try_start_7
    const-string v4, "activity"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    const/4 v4, 0x0

    const-string v5, "time"

    .line 1001
    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1002
    const/4 v6, 0x0

    const-string v7, "weight"

    .line 1003
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1004
    new-instance v7, Landroid/support/v7/widget/aa;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/support/v7/widget/aa;-><init>(Ljava/lang/String;JF)V

    .line 1005
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1020
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 1022
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1025
    :cond_5
    :goto_3
    throw v0

    .line 1020
    :cond_6
    if-eqz v1, :cond_1

    .line 1022
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 1025
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_3

    .line 967
    :catch_6
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->c()V

    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/pm/ResolveInfo;)I
    .locals 5

    .prologue
    .line 425
    iget-object v2, p0, Landroid/support/v7/widget/x;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 426
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->c()V

    .line 427
    iget-object v3, p0, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    .line 428
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 429
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 430
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/y;

    .line 431
    iget-object v0, v0, Landroid/support/v7/widget/y;->a:Landroid/content/pm/ResolveInfo;

    if-ne v0, p1, :cond_0

    .line 432
    monitor-exit v2

    move v0, v1

    .line 435
    :goto_1
    return v0

    .line 429
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 411
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->c()V

    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/y;

    iget-object v0, v0, Landroid/support/v7/widget/y;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Landroid/support/v7/widget/aa;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 729
    if-eqz v0, :cond_2

    .line 730
    iput-boolean v6, p0, Landroid/support/v7/widget/x;->n:Z

    .line 731
    invoke-direct {p0}, Landroid/support/v7/widget/x;->f()V

    .line 2567
    iget-boolean v1, p0, Landroid/support/v7/widget/x;->m:Z

    if-nez v1, :cond_0

    .line 2568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2570
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/x;->n:Z

    if-eqz v1, :cond_1

    .line 2573
    iput-boolean v5, p0, Landroid/support/v7/widget/x;->n:Z

    .line 2574
    iget-object v1, p0, Landroid/support/v7/widget/x;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2575
    new-instance v1, Landroid/support/v7/widget/ac;

    invoke-direct {v1, p0, v5}, Landroid/support/v7/widget/ac;-><init>(Landroid/support/v7/widget/x;B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v7/widget/x;->f:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/support/v7/widget/x;->h:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 733
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/x;->e()Z

    .line 734
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->notifyChanged()V

    .line 736
    :cond_2
    return v0
.end method

.method public final b(I)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v2, p0, Landroid/support/v7/widget/x;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 459
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 460
    monitor-exit v2

    move-object v0, v1

    .line 488
    :goto_0
    return-object v0

    .line 463
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->c()V

    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/y;

    .line 467
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/widget/y;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/widget/y;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Landroid/support/v7/widget/x;->i:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 472
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 474
    iget-object v4, p0, Landroid/support/v7/widget/x;->p:Landroid/support/v7/widget/ab;

    if-eqz v4, :cond_1

    .line 476
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 477
    iget-object v4, p0, Landroid/support/v7/widget/x;->p:Landroid/support/v7/widget/ab;

    invoke-interface {v4}, Landroid/support/v7/widget/ab;->a()Z

    move-result v4

    .line 479
    if-eqz v4, :cond_1

    .line 480
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 484
    :cond_1
    new-instance v1, Landroid/support/v7/widget/aa;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/support/v7/widget/aa;-><init>(Landroid/content/ComponentName;JF)V

    .line 486
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/x;->a(Landroid/support/v7/widget/aa;)Z

    .line 488
    monitor-exit v2

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->c()V

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/y;

    iget-object v0, v0, Landroid/support/v7/widget/y;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 519
    :goto_0
    return-object v0

    .line 518
    :cond_0
    monitor-exit v1

    .line 519
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final c()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 655
    .line 1688
    iget-boolean v0, p0, Landroid/support/v7/widget/x;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 1689
    iput-boolean v2, p0, Landroid/support/v7/widget/x;->o:Z

    .line 1690
    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1691
    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/widget/x;->i:Landroid/content/Intent;

    .line 1692
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1693
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    .line 1694
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1695
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1696
    iget-object v6, p0, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    new-instance v7, Landroid/support/v7/widget/y;

    invoke-direct {v7, p0, v0}, Landroid/support/v7/widget/y;-><init>(Landroid/support/v7/widget/x;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1694
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1711
    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/x;->l:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/widget/x;->n:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/x;->h:Ljava/lang/String;

    .line 1712
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1713
    iput-boolean v2, p0, Landroid/support/v7/widget/x;->l:Z

    .line 1714
    iput-boolean v1, p0, Landroid/support/v7/widget/x;->m:Z

    .line 1715
    invoke-direct {p0}, Landroid/support/v7/widget/x;->g()V

    .line 656
    :goto_2
    or-int/2addr v0, v1

    .line 657
    invoke-direct {p0}, Landroid/support/v7/widget/x;->f()V

    .line 658
    if-eqz v0, :cond_1

    .line 659
    invoke-direct {p0}, Landroid/support/v7/widget/x;->e()Z

    .line 660
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->notifyChanged()V

    .line 662
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1700
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1718
    goto :goto_2
.end method
