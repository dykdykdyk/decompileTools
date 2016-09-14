.class final Lrx/c/a/q;
.super Lrx/t;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/t",
        "<",
        "Lrx/h",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final q:[Lrx/c/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/c/a/o",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/t",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:I

.field d:Lrx/c/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/p",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Lrx/f/c;

.field volatile g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lrx/c/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile i:Z

.field j:Z

.field k:Z

.field final l:Ljava/lang/Object;

.field volatile m:[Lrx/c/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/c/a/o",
            "<*>;"
        }
    .end annotation
.end field

.field n:J

.field o:J

.field p:I

.field final r:I

.field s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/c/a/o;

    sput-object v0, Lrx/c/a/q;->q:[Lrx/c/a/o;

    return-void
.end method

.method public constructor <init>(Lrx/t;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    const v1, 0x7fffffff

    .line 189
    invoke-direct {p0}, Lrx/t;-><init>()V

    .line 190
    iput-object p1, p0, Lrx/c/a/q;->a:Lrx/t;

    .line 191
    iput-boolean p2, p0, Lrx/c/a/q;->b:Z

    .line 192
    iput p3, p0, Lrx/c/a/q;->c:I

    .line 193
    invoke-static {}, Lrx/c/a/c;->a()Lrx/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lrx/c/a/q;->h:Lrx/c/a/c;

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/c/a/q;->l:Ljava/lang/Object;

    .line 195
    sget-object v0, Lrx/c/a/q;->q:[Lrx/c/a/o;

    iput-object v0, p0, Lrx/c/a/q;->m:[Lrx/c/a/o;

    .line 196
    if-ne p3, v1, :cond_0

    .line 197
    iput v1, p0, Lrx/c/a/q;->r:I

    .line 198
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/c/a/q;->request(J)V

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x1

    shr-int/lit8 v1, p3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lrx/c/a/q;->r:I

    .line 201
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lrx/c/a/q;->request(J)V

    goto :goto_0
.end method

.method private d()Lrx/f/c;
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lrx/c/a/q;->f:Lrx/f/c;

    .line 220
    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v1, p0, Lrx/c/a/q;->f:Lrx/f/c;

    .line 224
    if-nez v1, :cond_1

    .line 225
    new-instance v1, Lrx/f/c;

    invoke-direct {v1}, Lrx/f/c;-><init>()V

    .line 226
    iput-object v1, p0, Lrx/c/a/q;->f:Lrx/f/c;

    .line 227
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    move v1, v2

    .line 229
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lrx/c/a/q;->add(Lrx/u;)V

    .line 234
    :cond_0
    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v2, v0

    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/c/a/q;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 268
    iget-object v1, p0, Lrx/c/a/q;->a:Lrx/t;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lrx/c/a/q;->a:Lrx/t;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;B)V

    invoke-virtual {v1, v2}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 806
    iget-object v1, p0, Lrx/c/a/q;->a:Lrx/t;

    invoke-virtual {v1}, Lrx/t;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    :goto_0
    return v0

    .line 809
    :cond_0
    iget-object v1, p0, Lrx/c/a/q;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 810
    iget-boolean v2, p0, Lrx/c/a/q;->b:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 812
    :try_start_0
    invoke-direct {p0}, Lrx/c/a/q;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    invoke-virtual {p0}, Lrx/c/a/q;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/c/a/q;->unsubscribe()V

    throw v0

    .line 818
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lrx/c/a/q;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 207
    if-nez v0, :cond_1

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lrx/c/a/q;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 210
    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 212
    iput-object v0, p0, Lrx/c/a/q;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 214
    :cond_0
    monitor-exit p0

    .line 216
    :cond_1
    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 555
    monitor-enter p0

    .line 556
    :try_start_0
    iget-boolean v0, p0, Lrx/c/a/q;->j:Z

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/q;->k:Z

    .line 558
    monitor-exit p0

    .line 563
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/q;->j:Z

    .line 561
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-virtual {p0}, Lrx/c/a/q;->c()V

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final c()V
    .locals 23

    .prologue
    .line 568
    const/4 v3, 0x0

    .line 570
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/c/a/q;->a:Lrx/t;

    .line 573
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lrx/c/a/q;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 795
    :cond_1
    :goto_1
    return-void

    .line 577
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/c/a/q;->e:Ljava/util/Queue;

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/c/a/q;->d:Lrx/c/a/p;

    invoke-virtual {v2}, Lrx/c/a/p;->get()J

    move-result-wide v4

    .line 580
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move v11, v2

    .line 583
    :goto_2
    const/4 v2, 0x0

    .line 586
    if-eqz v9, :cond_9

    .line 588
    :cond_3
    const/4 v7, 0x0

    .line 589
    const/4 v6, 0x0

    .line 590
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v8, v4, v12

    if-lez v8, :cond_7

    .line 591
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 593
    invoke-direct/range {p0 .. p0}, Lrx/c/a/q;->f()Z

    move-result v8

    if-nez v8, :cond_1

    .line 597
    if-eqz v6, :cond_7

    .line 600
    invoke-static {v6}, Lrx/c/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 603
    :try_start_1
    invoke-virtual {v14, v8}, Lrx/t;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    :goto_4
    add-int/lit8 v8, v2, 0x1

    .line 615
    add-int/lit8 v2, v7, 0x1

    .line 616
    const-wide/16 v12, 0x1

    sub-long/2addr v4, v12

    move v7, v2

    move v2, v8

    .line 617
    goto :goto_3

    .line 580
    :cond_4
    const/4 v2, 0x0

    move v11, v2

    goto :goto_2

    .line 604
    :catch_0
    move-exception v8

    .line 605
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lrx/c/a/q;->b:Z

    if-nez v10, :cond_6

    .line 606
    invoke-static {v8}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 607
    const/4 v3, 0x1

    .line 608
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/q;->unsubscribe()V

    .line 609
    invoke-virtual {v14, v8}, Lrx/t;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 792
    :catchall_0
    move-exception v2

    if-nez v3, :cond_5

    .line 793
    monitor-enter p0

    .line 794
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lrx/c/a/q;->j:Z

    .line 795
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_5
    throw v2

    .line 612
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/q;->a()Ljava/util/Queue;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_4

    .line 618
    :cond_7
    if-lez v7, :cond_8

    .line 619
    if-eqz v11, :cond_c

    .line 620
    const-wide v4, 0x7fffffffffffffffL

    .line 625
    :cond_8
    :goto_5
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-eqz v7, :cond_9

    if-nez v6, :cond_3

    :cond_9
    move-wide v6, v4

    move v5, v2

    .line 637
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lrx/c/a/q;->i:Z

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/c/a/q;->e:Ljava/util/Queue;

    .line 642
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/c/a/q;->m:[Lrx/c/a/o;

    .line 643
    array-length v0, v15

    move/from16 v16, v0

    .line 647
    if-eqz v2, :cond_e

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_a
    if-nez v16, :cond_e

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/c/a/q;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 649
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 650
    :cond_b
    invoke-virtual {v14}, Lrx/t;->onCompleted()V

    goto/16 :goto_1

    .line 622
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/c/a/q;->d:Lrx/c/a/p;

    .line 1139
    neg-int v5, v7

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Lrx/c/a/p;->addAndGet(J)J

    move-result-wide v4

    goto :goto_5

    .line 652
    :cond_d
    invoke-direct/range {p0 .. p0}, Lrx/c/a/q;->e()V

    goto/16 :goto_1

    .line 658
    :cond_e
    const/4 v4, 0x0

    .line 659
    if-lez v16, :cond_25

    .line 661
    move-object/from16 v0, p0

    iget-wide v12, v0, Lrx/c/a/q;->o:J

    .line 662
    move-object/from16 v0, p0

    iget v2, v0, Lrx/c/a/q;->p:I

    .line 666
    move/from16 v0, v16

    if-le v0, v2, :cond_f

    aget-object v8, v15, v2

    iget-wide v8, v8, Lrx/c/a/o;->b:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_13

    .line 667
    :cond_f
    move/from16 v0, v16

    if-gt v0, v2, :cond_10

    .line 668
    const/4 v2, 0x0

    .line 672
    :cond_10
    const/4 v8, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v8, v0, :cond_12

    .line 673
    aget-object v9, v15, v2

    iget-wide v0, v9, Lrx/c/a/o;->b:J

    move-wide/from16 v18, v0

    cmp-long v9, v18, v12

    if-eqz v9, :cond_12

    .line 677
    add-int/lit8 v2, v2, 0x1

    .line 678
    move/from16 v0, v16

    if-ne v2, v0, :cond_11

    .line 679
    const/4 v2, 0x0

    .line 672
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 685
    :cond_12
    move-object/from16 v0, p0

    iput v2, v0, Lrx/c/a/q;->p:I

    .line 686
    aget-object v8, v15, v2

    iget-wide v8, v8, Lrx/c/a/o;->b:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lrx/c/a/q;->o:J

    .line 691
    :cond_13
    const/4 v8, 0x0

    move v9, v8

    move v8, v2

    move/from16 v20, v5

    move-wide/from16 v21, v6

    move/from16 v7, v20

    move v6, v4

    move-wide/from16 v4, v21

    :goto_7
    move/from16 v0, v16

    if-ge v9, v0, :cond_21

    .line 693
    invoke-direct/range {p0 .. p0}, Lrx/c/a/q;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    aget-object v17, v15, v8

    .line 700
    const/4 v2, 0x0

    .line 702
    :cond_14
    const/4 v10, 0x0

    .line 703
    :goto_8
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_15

    .line 705
    invoke-direct/range {p0 .. p0}, Lrx/c/a/q;->f()Z

    move-result v12

    if-nez v12, :cond_1

    .line 709
    move-object/from16 v0, v17

    iget-object v12, v0, Lrx/c/a/o;->d:Lrx/c/d/h;

    .line 710
    if-eqz v12, :cond_15

    .line 713
    invoke-virtual {v12}, Lrx/c/d/h;->c()Ljava/lang/Object;

    move-result-object v2

    .line 714
    if-eqz v2, :cond_15

    .line 717
    invoke-static {v2}, Lrx/c/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    .line 720
    :try_start_5
    invoke-virtual {v14, v12}, Lrx/t;->onNext(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 731
    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    .line 732
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v4, v12

    .line 733
    goto :goto_8

    .line 721
    :catch_1
    move-exception v2

    .line 722
    const/4 v3, 0x1

    .line 723
    :try_start_6
    invoke-static {v2}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 725
    :try_start_7
    invoke-virtual {v14, v2}, Lrx/t;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 727
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/q;->unsubscribe()V

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lrx/c/a/q;->unsubscribe()V

    throw v2

    .line 734
    :cond_15
    if-lez v10, :cond_16

    .line 735
    if-nez v11, :cond_1c

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/c/a/q;->d:Lrx/c/a/p;

    .line 2139
    neg-int v5, v10

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Lrx/c/a/p;->addAndGet(J)J

    move-result-wide v4

    .line 740
    :goto_9
    int-to-long v12, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Lrx/c/a/o;->a(J)V

    .line 743
    :cond_16
    const-wide/16 v12, 0x0

    cmp-long v10, v4, v12

    if-eqz v10, :cond_17

    if-nez v2, :cond_14

    .line 747
    :cond_17
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lrx/c/a/o;->c:Z

    .line 748
    move-object/from16 v0, v17

    iget-object v10, v0, Lrx/c/a/o;->d:Lrx/c/d/h;

    .line 749
    if-eqz v2, :cond_1a

    if-eqz v10, :cond_18

    .line 2387
    iget-object v2, v10, Lrx/c/d/h;->a:Ljava/util/Queue;

    .line 2388
    if-nez v2, :cond_1d

    .line 2389
    const/4 v2, 0x1

    .line 749
    :goto_a
    if-eqz v2, :cond_1a

    .line 3298
    :cond_18
    move-object/from16 v0, v17

    iget-object v2, v0, Lrx/c/a/o;->d:Lrx/c/d/h;

    .line 3299
    if-eqz v2, :cond_19

    .line 3300
    invoke-virtual {v2}, Lrx/c/d/h;->b()V

    .line 3304
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/c/a/q;->f:Lrx/f/c;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lrx/f/c;->b(Lrx/u;)V

    .line 3305
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/c/a/q;->l:Ljava/lang/Object;

    monitor-enter v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3306
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lrx/c/a/q;->m:[Lrx/c/a/o;

    .line 3307
    array-length v13, v12

    .line 3308
    const/4 v6, -0x1

    .line 3310
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v13, :cond_24

    .line 3311
    aget-object v18, v12, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 3316
    :goto_c
    if-gez v2, :cond_1f

    .line 3317
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 751
    :goto_d
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lrx/c/a/q;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 755
    add-int/lit8 v7, v7, 0x1

    .line 756
    const/4 v6, 0x1

    .line 759
    :cond_1a
    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-eqz v2, :cond_21

    .line 764
    add-int/lit8 v2, v8, 0x1

    .line 765
    move/from16 v0, v16

    if-ne v2, v0, :cond_1b

    .line 766
    const/4 v2, 0x0

    .line 691
    :cond_1b
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v2

    goto/16 :goto_7

    .line 738
    :cond_1c
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_9

    .line 2391
    :cond_1d
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v2

    goto :goto_a

    .line 3310
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3319
    :cond_1f
    const/4 v6, 0x1

    if-ne v13, v6, :cond_20

    .line 3320
    :try_start_b
    sget-object v2, Lrx/c/a/q;->q:[Lrx/c/a/o;

    move-object/from16 v0, p0

    iput-object v2, v0, Lrx/c/a/q;->m:[Lrx/c/a/o;

    .line 3321
    monitor-exit v10

    goto :goto_d

    .line 3327
    :catchall_2
    move-exception v2

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3323
    :cond_20
    add-int/lit8 v6, v13, -0x1

    :try_start_d
    new-array v6, v6, [Lrx/c/a/o;

    .line 3324
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3325
    add-int/lit8 v17, v2, 0x1

    sub-int/2addr v13, v2

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v17

    invoke-static {v12, v0, v6, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3326
    move-object/from16 v0, p0

    iput-object v6, v0, Lrx/c/a/q;->m:[Lrx/c/a/o;

    .line 3327
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_d

    :cond_21
    move v2, v6

    move v4, v7

    .line 770
    :try_start_e
    move-object/from16 v0, p0

    iput v8, v0, Lrx/c/a/q;->p:I

    .line 771
    aget-object v5, v15, v8

    iget-wide v6, v5, Lrx/c/a/o;->b:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lrx/c/a/q;->o:J

    .line 774
    :goto_e
    if-lez v4, :cond_22

    .line 775
    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lrx/c/a/q;->request(J)V

    .line 778
    :cond_22
    if-nez v2, :cond_0

    .line 782
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 783
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lrx/c/a/q;->k:Z

    if-nez v2, :cond_23

    .line 784
    const/4 v3, 0x1

    .line 785
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/c/a/q;->j:Z

    .line 786
    monitor-exit p0

    goto/16 :goto_1

    .line 789
    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 788
    :cond_23
    const/4 v2, 0x0

    :try_start_11
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/c/a/q;->k:Z

    .line 789
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_0

    .line 795
    :catchall_4
    move-exception v2

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v2

    :cond_24
    move v2, v6

    goto/16 :goto_c

    :cond_25
    move v2, v4

    move v4, v5

    goto :goto_e
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/q;->i:Z

    .line 283
    invoke-virtual {p0}, Lrx/c/a/q;->b()V

    .line 284
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lrx/c/a/q;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/q;->i:Z

    .line 278
    invoke-virtual {p0}, Lrx/c/a/q;->b()V

    .line 279
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    check-cast p1, Lrx/h;

    .line 4239
    if-eqz p1, :cond_0

    .line 4242
    invoke-static {}, Lrx/h;->b()Lrx/h;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 4256
    iget v0, p0, Lrx/c/a/q;->s:I

    add-int/lit8 v0, v0, 0x1

    .line 4257
    iget v2, p0, Lrx/c/a/q;->r:I

    if-ne v0, v2, :cond_1

    .line 4258
    iput v1, p0, Lrx/c/a/q;->s:I

    .line 4259
    int-to-long v0, v0

    .line 4435
    invoke-virtual {p0, v0, v1}, Lrx/c/a/q;->request(J)V

    .line 6496
    :cond_0
    :goto_0
    return-void

    .line 4261
    :cond_1
    iput v0, p0, Lrx/c/a/q;->s:I

    goto :goto_0

    .line 4245
    :cond_2
    instance-of v0, p1, Lrx/c/d/m;

    if-eqz v0, :cond_f

    .line 4246
    check-cast p1, Lrx/c/d/m;

    .line 5093
    iget-object v3, p1, Lrx/c/d/m;->e:Ljava/lang/Object;

    .line 5451
    iget-object v0, p0, Lrx/c/a/q;->d:Lrx/c/a/p;

    invoke-virtual {v0}, Lrx/c/a/p;->get()J

    move-result-wide v4

    .line 5452
    cmp-long v0, v4, v6

    if-eqz v0, :cond_11

    .line 5453
    monitor-enter p0

    .line 5455
    :try_start_0
    iget-object v0, p0, Lrx/c/a/q;->d:Lrx/c/a/p;

    invoke-virtual {v0}, Lrx/c/a/p;->get()J

    move-result-wide v4

    .line 5456
    iget-boolean v0, p0, Lrx/c/a/q;->j:Z

    if-nez v0, :cond_10

    cmp-long v0, v4, v6

    if-eqz v0, :cond_10

    .line 5457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/q;->j:Z

    move v0, v2

    .line 5460
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5462
    :goto_2
    if-eqz v0, :cond_8

    .line 5505
    :try_start_1
    iget-object v0, p0, Lrx/c/a/q;->a:Lrx/t;

    invoke-virtual {v0, v3}, Lrx/t;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 5516
    :goto_3
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 5517
    :try_start_2
    iget-object v0, p0, Lrx/c/a/q;->d:Lrx/c/a/p;

    .line 6139
    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lrx/c/a/p;->addAndGet(J)J

    .line 5520
    :cond_3
    iget v0, p0, Lrx/c/a/q;->s:I

    add-int/lit8 v0, v0, 0x1

    .line 5521
    iget v3, p0, Lrx/c/a/q;->r:I

    if-ne v0, v3, :cond_6

    .line 5522
    const/4 v3, 0x0

    iput v3, p0, Lrx/c/a/q;->s:I

    .line 5523
    int-to-long v4, v0

    .line 6435
    invoke-virtual {p0, v4, v5}, Lrx/c/a/q;->request(J)V

    .line 5529
    :goto_4
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 5531
    :try_start_3
    iget-boolean v0, p0, Lrx/c/a/q;->k:Z

    if-nez v0, :cond_7

    .line 5532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/c/a/q;->j:Z

    .line 5533
    monitor-exit p0

    goto :goto_0

    .line 5536
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5538
    :catchall_1
    move-exception v0

    move v1, v2

    :goto_5
    if-nez v1, :cond_4

    .line 5539
    monitor-enter p0

    .line 5540
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lrx/c/a/q;->j:Z

    .line 5541
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_4
    throw v0

    .line 5460
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 5506
    :catch_0
    move-exception v0

    .line 5507
    :try_start_7
    iget-boolean v3, p0, Lrx/c/a/q;->b:Z

    if-nez v3, :cond_5

    .line 5508
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 5510
    :try_start_8
    invoke-virtual {p0}, Lrx/c/a/q;->unsubscribe()V

    .line 5511
    invoke-virtual {p0, v0}, Lrx/c/a/q;->onError(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 5514
    :cond_5
    :try_start_9
    invoke-virtual {p0}, Lrx/c/a/q;->a()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5538
    :catchall_3
    move-exception v0

    goto :goto_5

    .line 5525
    :cond_6
    iput v0, p0, Lrx/c/a/q;->s:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    .line 5535
    :cond_7
    const/4 v0, 0x0

    :try_start_a
    iput-boolean v0, p0, Lrx/c/a/q;->k:Z

    .line 5536
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 5551
    invoke-virtual {p0}, Lrx/c/a/q;->c()V

    goto/16 :goto_0

    .line 5541
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    .line 6475
    :cond_8
    iget-object v0, p0, Lrx/c/a/q;->e:Ljava/util/Queue;

    .line 6476
    if-nez v0, :cond_9

    .line 6477
    iget v4, p0, Lrx/c/a/q;->c:I

    .line 6478
    const v0, 0x7fffffff

    if-ne v4, v0, :cond_a

    .line 6479
    new-instance v0, Lrx/c/d/a/d;

    sget v1, Lrx/c/d/h;->d:I

    invoke-direct {v0, v1}, Lrx/c/d/a/d;-><init>(I)V

    .line 6491
    :goto_6
    iput-object v0, p0, Lrx/c/a/q;->e:Ljava/util/Queue;

    .line 6493
    :cond_9
    invoke-static {v3}, Lrx/c/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 6494
    invoke-virtual {p0}, Lrx/c/a/q;->unsubscribe()V

    .line 6495
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-static {v0, v3}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c/a/q;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 7042
    :cond_a
    add-int/lit8 v0, v4, -0x1

    and-int/2addr v0, v4

    if-nez v0, :cond_b

    .line 6481
    :goto_7
    if-eqz v2, :cond_d

    .line 6482
    invoke-static {}, Lrx/c/d/b/y;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6483
    new-instance v0, Lrx/c/d/b/r;

    invoke-direct {v0, v4}, Lrx/c/d/b/r;-><init>(I)V

    goto :goto_6

    :cond_b
    move v2, v1

    .line 7042
    goto :goto_7

    .line 6485
    :cond_c
    new-instance v0, Lrx/c/d/a/b;

    invoke-direct {v0, v4}, Lrx/c/d/a/b;-><init>(I)V

    goto :goto_6

    .line 6488
    :cond_d
    new-instance v0, Lrx/c/d/a/c;

    invoke-direct {v0, v4}, Lrx/c/d/a/c;-><init>(I)V

    goto :goto_6

    .line 6498
    :cond_e
    invoke-virtual {p0}, Lrx/c/a/q;->b()V

    goto/16 :goto_0

    .line 4248
    :cond_f
    new-instance v0, Lrx/c/a/o;

    iget-wide v2, p0, Lrx/c/a/q;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/c/a/q;->n:J

    invoke-direct {v0, p0, v2, v3}, Lrx/c/a/o;-><init>(Lrx/c/a/q;J)V

    .line 7287
    invoke-direct {p0}, Lrx/c/a/q;->d()Lrx/f/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/f/c;->a(Lrx/u;)V

    .line 7288
    iget-object v1, p0, Lrx/c/a/q;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 7289
    :try_start_c
    iget-object v2, p0, Lrx/c/a/q;->m:[Lrx/c/a/o;

    .line 7290
    array-length v3, v2

    .line 7291
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lrx/c/a/o;

    .line 7292
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7293
    aput-object v0, v4, v3

    .line 7294
    iput-object v4, p0, Lrx/c/a/q;->m:[Lrx/c/a/o;

    .line 7295
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 4250
    invoke-virtual {p1, v0}, Lrx/h;->a(Lrx/t;)Lrx/u;

    .line 4251
    invoke-virtual {p0}, Lrx/c/a/q;->b()V

    goto/16 :goto_0

    .line 7295
    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :cond_10
    move v0, v1

    goto/16 :goto_1

    :cond_11
    move-wide v4, v6

    move v0, v1

    goto/16 :goto_2
.end method
