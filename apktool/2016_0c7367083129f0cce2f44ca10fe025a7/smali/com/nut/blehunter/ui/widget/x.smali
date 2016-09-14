.class final Lcom/nut/blehunter/ui/widget/x;
.super Ljava/lang/Object;
.source "WeekDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/threeten/bp/j;

.field final synthetic b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/widget/WeekDatePicker;Lorg/threeten/bp/j;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/x;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    iput-object p2, p0, Lcom/nut/blehunter/ui/widget/x;->a:Lorg/threeten/bp/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/x;->b:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(Lcom/nut/blehunter/ui/widget/WeekDatePicker;)Lcom/nut/blehunter/ui/widget/z;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/x;->a:Lorg/threeten/bp/j;

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/widget/z;->a(Lorg/threeten/bp/j;)V

    .line 700
    return-void
.end method
