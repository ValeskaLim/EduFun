<?php

namespace Database\Seeders;

use App\Models\Article;
use App\Models\Category;
use App\Models\Course;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Writer;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $softwareEngineering = Category::create(['name' => 'Software Engineering']);
        $patternSoftwareDesign = Course::create(['name' => 'Pattern Software Design', 'category_id' => $softwareEngineering->id]);
        $agileSoftwareDevelopment = Course::create(['name' => 'Agile Software Development', 'category_id' => $softwareEngineering->id]);
        $codeReengineering = Course::create(['name' => 'Code Reengineering', 'category_id' => $softwareEngineering->id]);
        
        $interactiveMultimedia = Category::create(['name' => 'Interactive Multimedia']);
        $humanComputerInteraction = Course::create(['name' => 'Human and Computer Interaction', 'category_id' => $interactiveMultimedia->id]);
        $userExperience = Course::create(['name' => 'User Experience', 'category_id' => $interactiveMultimedia->id]);
        $userExperienceDigitalTech = Course::create(['name' => 'User Experience for Digital Immersive Technology', 'category_id' => $interactiveMultimedia->id]);

        $writer1 = Writer::factory()->create(['name' => 'John Doe']);
        $writer2 = Writer::factory()->create(['name' => 'Raka Gemma']);
        $writer3 = Writer::factory()->create(['name' => 'Gibran Purwokerto']);

        Article::factory()->create([
            'course_id' => $patternSoftwareDesign->id,
            'writer_id' => $writer1->id,
            'title' => $patternSoftwareDesign->name,
            'content' => 'Software design patterns are reusable solutions to common problems in software design. They are templates that can be applied to different situations to solve a problem. Here are the 5 most important software design patterns.',
        ]);

        Article::factory()->create([
            'course_id' => $agileSoftwareDevelopment->id,
            'writer_id' => $writer1->id,
            'title' => $agileSoftwareDevelopment->name,
            'content' => 'Agile software development is a set of principles for software development in which requirements and solutions evolve through collaboration between self-organizing cross-functional teams. Here are the 5 most important agile software development principles.',
        ]);

        Article::factory()->create([
            'course_id' => $codeReengineering->id,
            'writer_id' => $writer2->id,
            'title' => $codeReengineering->name,
            'content' => 'Code reengineering is the process of restructuring existing computer code without changing its external behavior. It is done to improve the quality of the code, make it easier to understand, and reduce maintenance costs. Here are the 5 most important code reengineering techniques.',
        ]);
        
        Article::factory()->create([
            'course_id' => $humanComputerInteraction->id,
            'writer_id' => $writer3->id,
            'title' => $humanComputerInteraction->name,
            'content' => 'Human-computer interaction (HCI) is the study of how people interact with computers and to what extent computers are or are not developed for successful interaction with human beings. Here are the 5 most important human-computer interaction principles.',
        ]);

        Article::factory()->create([
            'course_id' => $userExperience->id,
            'writer_id' => $writer3->id,
            'title' => $userExperience->name,
            'content' => 'User experience (UX) design is the process design teams use to create products that provide meaningful and relevant experiences to users. This involves the design of the entire process of acquiring and integrating the product, including aspects of branding, design, usability, and function. Here are the 5 most important user experience design principles.',
        ]);

        Article::factory()->create([
            'course_id' => $userExperienceDigitalTech->id,
            'writer_id' => $writer3->id,
            'title' => $userExperienceDigitalTech->name,
            'content' => 'User experience (UX) for digital immersive technology is the process design teams use to create products that provide meaningful and relevant experiences to users in digital immersive technology. This involves the design of the entire process of acquiring and integrating the product, including aspects of branding, design, usability, and function. Here are the 5 most important user experience design principles for digital immersive technology.',
        ]);
    }
}
