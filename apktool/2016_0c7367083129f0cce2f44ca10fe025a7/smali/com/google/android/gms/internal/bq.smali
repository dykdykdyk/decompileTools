.class public final Lcom/google/android/gms/internal/bq;
.super Lcom/google/android/gms/internal/e;


# static fields
.field private static volatile f:[Lcom/google/android/gms/internal/bq;


# instance fields
.field public b:Ljava/lang/Integer;

.field public c:Lcom/google/android/gms/internal/bv;

.field public d:Lcom/google/android/gms/internal/bv;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/e;-><init>()V

    .line 1000
    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->a:I

    .line 0
    return-void
.end method

.method public static d()[Lcom/google/android/gms/internal/bq;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/bq;->f:[Lcom/google/android/gms/internal/bq;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/d;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/bq;->f:[Lcom/google/android/gms/internal/bq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/bq;

    sput-object v0, Lcom/google/android/gms/internal/bq;->f:[Lcom/google/android/gms/internal/bq;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/bq;->f:[Lcom/google/android/gms/internal/bq;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/internal/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    .line 3000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/c;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    .line 4000
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/c;->d()I

    move-result v0

    .line 3000
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/bv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/e;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/bv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/e;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/zzapo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->a(ILcom/google/android/gms/internal/e;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->a(ILcom/google/android/gms/internal/e;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->a(IZ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method protected final c()I
    .locals 3

    .prologue
    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/e;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->b(ILcom/google/android/gms/internal/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->b(ILcom/google/android/gms/internal/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2000
    invoke-static {v1}, Lcom/google/android/gms/internal/zzapo;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 0
    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/bq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/bq;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    iget-object v3, p1, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/bv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    iget-object v3, p1, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/bv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/bv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bv;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bv;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_3
.end method
