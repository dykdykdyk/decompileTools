.class public final Lcom/umeng/analytics/q;
.super Ljava/lang/Object;
.source "AnalyticsConstants.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:[Ljava/lang/String;

.field public static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 18
    sput-boolean v3, Lcom/umeng/analytics/q;->a:Z

    .line 21
    const-string v0, "http://alogus.umeng.com/app_logs"

    sput-object v0, Lcom/umeng/analytics/q;->b:Ljava/lang/String;

    .line 22
    const-string v0, "http://alog.umeng.com/app_logs"

    sput-object v0, Lcom/umeng/analytics/q;->c:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/q;->d:[Ljava/lang/String;

    .line 57
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/umeng/analytics/q;->e:J

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/q;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "http://alog.umeng.co/app_logs"

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/q;->d:[Ljava/lang/String;

    .line 70
    return-void
.end method
