Garden.create([
                  {
                      name:        'East Ryde Veggie Patch',
                      garden_type: 'vegie',
                      structure:   'standing',
                      started:     Date.parse('20/09/2016'),
                      sun:         'full',
                      soil:        'sandy loam',
                      drainage:    'good',
                      location:    Garden.where(name: 'East Ryde').first
                  },
                  {
                      name:        'East Ryde Verandah',
                      garden_type: 'ornamental',
                      structure:   'standing',
                      started:     Date.parse('20/09/2016'),
                      sun:         'part',
                      soil:        'sandy',
                      drainage:    'great',
                      location:    Garden.where(name: 'East Ryde').first
                  },
                  {
                      name:        'East Ryde Front Garden',
                      garden_type: 'ornamental',
                      structure:   'in-ground',
                      started:     Date.parse('20/09/2016'),
                      sun:         'part',
                      soil:        'sandy',
                      drainage:    'great',
                      location:    Garden.where(name: 'East Ryde').first
                  },
                  {
                      name:        'Dundurrabin house garden',
                      garden_type: 'experimental',
                      structure:   'in-ground',
                      started:     Date.parse('01/02/2016'),
                      sun:         'part',
                      soil:        'clay loam',
                      drainage:    'poor',
                      location:    Garden.where(name: 'Dundurrabin').first
                  },
              ])
