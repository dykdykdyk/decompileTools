.class public final Lcom/google/android/gms/measurement/internal/am;
.super Lcom/google/android/gms/measurement/internal/co;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/google/android/gms/common/g;->b:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\d+)(\\d)(\\d\\d)"

    const-string v2, "$1.$2.$3"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/am;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/ca;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/co;-><init>(Lcom/google/android/gms/measurement/internal/ca;)V

    return-void
.end method

.method public static A()I
    .locals 1

    const/16 v0, 0x800

    return v0
.end method

.method static B()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static C()J
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->m:Lcom/google/android/gms/measurement/internal/az;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static D()J
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->n:Lcom/google/android/gms/measurement/internal/az;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static E()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method static F()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method static G()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method static H()J
    .locals 2

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method static I()J
    .locals 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method static J()J
    .locals 2

    const-wide/32 v0, 0xee48

    return-wide v0
.end method

.method static K()J
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->A:Lcom/google/android/gms/measurement/internal/az;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static L()Ljava/lang/String;
    .locals 1

    const-string v0, "google_app_measurement.db"

    return-object v0
.end method

.method public static M()J
    .locals 2

    const-wide/16 v0, 0x24ec

    return-wide v0
.end method

.method public static N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static Q()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ad;->b()Z

    move-result v0

    return v0
.end method

.method public static R()J
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->y:Lcom/google/android/gms/measurement/internal/az;

    .line 28000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static S()J
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->u:Lcom/google/android/gms/measurement/internal/az;

    .line 29000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static T()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public static U()J
    .locals 4

    .prologue
    .line 0
    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->e:Lcom/google/android/gms/measurement/internal/az;

    .line 30000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static V()I
    .locals 2

    .prologue
    .line 0
    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->k:Lcom/google/android/gms/measurement/internal/az;

    .line 31000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static W()I
    .locals 2

    .prologue
    .line 0
    const/4 v1, 0x1

    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->l:Lcom/google/android/gms/measurement/internal/az;

    .line 32000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static X()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->q:Lcom/google/android/gms/measurement/internal/az;

    .line 33000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static Y()J
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->f:Lcom/google/android/gms/measurement/internal/az;

    .line 34000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Z()J
    .locals 4

    .prologue
    .line 0
    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->r:Lcom/google/android/gms/measurement/internal/az;

    .line 35000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->c:Lcom/google/android/gms/measurement/internal/az;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static aa()J
    .locals 4

    .prologue
    .line 0
    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->t:Lcom/google/android/gms/measurement/internal/az;

    .line 36000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ab()J
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->s:Lcom/google/android/gms/measurement/internal/az;

    .line 37000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ac()J
    .locals 4

    .prologue
    .line 0
    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->v:Lcom/google/android/gms/measurement/internal/az;

    .line 38000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ad()J
    .locals 4

    .prologue
    .line 0
    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->w:Lcom/google/android/gms/measurement/internal/az;

    .line 39000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ae()I
    .locals 3

    .prologue
    .line 0
    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/ay;->x:Lcom/google/android/gms/measurement/internal/az;

    .line 40000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public static c()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public static d()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method static e()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method static f()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method static y()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public static z()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method


# virtual methods
.method public final O()Z
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/am;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/am;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 5000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->p()Landroid/content/Context;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/j;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/am;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/am;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/am;->b:Ljava/lang/Boolean;

    .line 6000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/am;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final P()Z
    .locals 1

    const-string v0, "firebase_analytics_collection_deactivated"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/am;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/az;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/az",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 0
    if-nez p1, :cond_0

    .line 8000
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 9000
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->s()Lcom/google/android/gms/measurement/internal/bu;

    move-result-object v0

    .line 10000
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/az;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11000
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/az;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12000
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18000
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->p()Landroid/content/Context;

    move-result-object v1

    .line 0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 19000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    .line 20000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v2, "Failed to load metadata: PackageManager is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    .line 21000
    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->p()Landroid/content/Context;

    move-result-object v2

    .line 0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 22000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    .line 23000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v2, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v2

    .line 27000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v3, "Failed to load metadata: Package name not found"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_3

    .line 24000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    .line 25000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v2, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/az;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/az",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 0
    if-nez p1, :cond_0

    .line 13000
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    .line 14000
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->s()Lcom/google/android/gms/measurement/internal/bu;

    move-result-object v0

    .line 15000
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/az;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16000
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/az;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17000
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/az;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic g()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->g()V

    return-void
.end method

.method public final bridge synthetic h()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->h()V

    return-void
.end method

.method public final bridge synthetic i()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->i()V

    return-void
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/measurement/internal/al;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->j()Lcom/google/android/gms/measurement/internal/al;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->k()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/bd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->l()Lcom/google/android/gms/measurement/internal/bd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/measurement/internal/at;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->m()Lcom/google/android/gms/measurement/internal/at;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/measurement/internal/i;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->n()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/common/util/c;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->o()Lcom/google/android/gms/common/util/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->p()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/an;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->q()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->r()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/bu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->s()Lcom/google/android/gms/measurement/internal/bu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/x;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->t()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/bv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->u()Lcom/google/android/gms/measurement/internal/bv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/bf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/bp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->w()Lcom/google/android/gms/measurement/internal/bp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/am;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/co;->x()Lcom/google/android/gms/measurement/internal/am;

    move-result-object v0

    return-object v0
.end method
