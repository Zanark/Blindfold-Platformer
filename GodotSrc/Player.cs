using Godot;
using System;

public class Player : KinematicBody2D
{
    public const double ACCELERATION = 512;
    public const double MAX_SPEED = 64;
    public const double FRICTION = 0.25;
    public const float GRAVITY = 200;
    public const double JUMP_FORCE = 128;

    private Vector2 motion = Vector2.Zero;

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        
    }

    public override void _PhysicsProcess(float delta)
    {
        motion.y += GRAVITY * delta;

        MoveAndSlide(motion);
        
    }
}
