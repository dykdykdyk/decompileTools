.class final Lcom/nut/blehunter/ui/cm;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Lcom/umeng/message/IUmengRegisterCallback;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/nut/blehunter/ui/cm;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistered(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/nut/blehunter/ui/cm;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-string v1, "4"

    invoke-static {v0, p1, v1}, Lcom/nut/blehunter/push/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    return-void
.end method
